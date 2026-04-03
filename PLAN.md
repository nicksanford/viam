# Viam Elixir SDK – Implementation Plan

## Context

Viam is a robotics platform where `viam-server` runs on the robot and exposes a gRPC API for controlling components (sensors, motors, cameras, etc.). The SDK covers three distinct roles:

- **Phase 1** — SDK *client*: connect to a local `viam-server` over direct gRPC and read a sensor ✅
- **Phase 2** — WebRTC transport: connect to remote robots via the Viam cloud signaling relay
- **Phase 3** — Module *server*: host custom resources in Elixir, packaged as self-contained binaries

---

## Technology Stack

| Layer | Library | Rationale |
|---|---|---|
| Protobuf codegen | `buf` CLI + `protoc-gen-elixir` escript | Generates from `buf.build/viamrobotics/api`; trivial to regenerate |
| Protobuf runtime | `protobuf ~> 0.13` | Runtime for generated message structs |
| gRPC client + server | `grpc ~> 0.11` | Handles HTTP/2, framing, both client stubs and server dispatch |
| WebRTC (Phase 2) | `ex_webrtc ~> 0.16` + `ex_sctp ~> 0.1` | Pure Elixir WebRTC; ex_sctp for data channels |
| Binary packaging (Phase 3) | `burrito ~> 1.0` | Bundles Erlang runtime into self-contained executable; no Elixir needed on target |

---

## Code Generation Setup

### One-time developer setup
```bash
# 1. Install buf CLI
#    https://buf.build/docs/installation — or on Linux:
#    curl -sSL https://github.com/bufbuild/buf/releases/latest/download/buf-Linux-x86_64 \
#      -o /usr/local/bin/buf && chmod +x /usr/local/bin/buf

# 2. Install protoc-gen-elixir escript
mix escript.install hex protobuf
export PATH=~/.mix/escripts:$PATH
```

### `buf.gen.yaml` (project root)
```yaml
version: v2
clean: true

inputs:
  - module: buf.build/viamrobotics/api

plugins:
  - local: protoc-gen-elixir
    out: lib/viam_sdk/gen
    opt:
      - plugins=grpc
    strategy: all   # REQUIRED: Elixir plugin needs all files in one pass
    # Note: do NOT set include_imports: true — conflicts with the googleapis hex dep
```

### Regenerate stubs
```bash
buf generate
```

Generated output committed to `lib/viam_sdk/gen/`. README documents the full workflow.

---

## Phase 1: Direct gRPC Client ✅

### Implemented Files
```
mix.exs                             ← :grpc, :protobuf deps; :mod → ViamSdk.Application
buf.gen.yaml                        ← buf codegen config (57 generated files)
README.md
lib/
  viam_sdk.ex                       ← public API with @moduledoc/@doc/@spec
  viam_sdk/
    application.ex                  ← starts GRPC.Client.Supervisor + ViamSdk.RobotSupervisor
    robot.ex                        ← GenServer owning GRPC.Channel; decodes Google.Protobuf.Value
    gen/                            ← buf-generated stubs (57 files, committed)
test/
  fixtures/fake_robot.json          ← robot config with 8 fake components for e2e tests
  support/
    fake_robot_server.ex            ← in-process fake RobotService (uses GRPC.Server.Supervisor)
    fake_sensor_server.ex           ← in-process fake SensorService
    server_helpers.ex               ← start_server/1 helper (unused after refactor, kept for reference)
    viam_server_helper.ex           ← starts real viam-server, captures OS PID, SIGTERM/SIGKILL cleanup
  viam_sdk/
    robot_test.exs                  ← connect, resource_names
    sensor_test.exs                 ← get_readings, value decoding
    integration_test.exs            ← @tag :integration; tests against real viam-server
```

### Supervision Architecture

`ViamSdk.Application` starts `GRPC.Client.Supervisor` (required by grpc lib) and `ViamSdk.RobotSupervisor` (a `DynamicSupervisor`).

**Easy path — SDK supervises:**
```elixir
{:ok, robot} = ViamSdk.connect("localhost:8080", transport: :grpc)
# Internally: DynamicSupervisor.start_child(ViamSdk.RobotSupervisor, {ViamSdk.Robot, ...})
```

**Advanced path — user supervises via child_spec:**
```elixir
children = [{ViamSdk.Robot, address: "localhost:8080", name: :my_robot}]
ViamSdk.Robot.resource_names(:my_robot)
```

### Public API

`connect/2` takes the URI as the first argument and a keyword list for options. `:transport` is required:

```elixir
{:ok, robot} = ViamSdk.connect("localhost:8080", transport: :grpc)
{:ok, names} = ViamSdk.resource_names(robot)
{:ok, data}  = ViamSdk.get_readings(robot, "my-sensor")
```

### Key Implementation Notes

- Proto messages are plain Elixir structs — use `%Module{}` syntax, not `.new()`
- `GRPC.Client.Supervisor` must be in the supervision tree (added to `ViamSdk.Application`)
- Sensor readings use `Viam.Common.V1.GetReadingsRequest/Response` (not sensor-specific messages)
- `buf.gen.yaml` does **not** use `include_imports: true` — would redefine modules already provided by the `googleapis` hex dep
- `Google.Protobuf.Value` decoded to native Elixir types in `ViamSdk.Robot.decode_value/1`
- In-process test servers use `GRPC.Server.Supervisor.child_spec/2` + `start_supervised!/1` — cleaner than manual `GRPC.Server.start/stop`
- `ViamServerHelper` captures the OS PID before the port owner exits; uses SIGTERM → SIGKILL with timeout for cleanup

---

## Phase 2: WebRTC Transport (next)

Viam's WebRTC transport is **not** standard HTTP/2 gRPC — it uses a custom multiplexing protocol over SCTP data channels (`proto/rpc/webrtc/v1/grpc.proto` in `go.viam.com/utils`):

- One reliable ordered data channel named `"rpc"`
- 4-byte big-endian length-prefixed protobuf `Request`/`Response` frames
- Each frame has a `stream` ID for call multiplexing
- `RequestHeaders` → start call, `RequestMessage` → body, `ResponseTrailers` → end call

New modules needed:
- `ViamSdk.WebRTC.Signaling` – HTTP signaling client (SDP offer/answer + ICE candidates to local viam-server or app.viam.com)
- `ViamSdk.WebRTC.Channel` – GenServer implementing the multiplexing protocol over the data channel

Additional proto definitions needed (from `go.viam.com/utils`, not in `buf.build/viamrobotics/api`):
- `proto/rpc/webrtc/v1/signaling.proto` — `SignalingService` (Call, CallUpdate, Answer, etc.)
- `proto/rpc/webrtc/v1/grpc.proto` — `Request`/`Response` multiplexing frames

---

## Phase 3: Module Server + Burrito Packaging

### How Viam Modules Work

Modules are external processes that host custom resource types. The lifecycle:

1. viam-server spawns the module binary with `--parent-address unix:///tmp/.../parent.sock`
2. Module starts its own gRPC server on a Unix socket
3. Module connects to parent and calls `ModuleService/Ready` with its socket path
4. viam-server connects back, calls `AddResource`/`ReconfigureResource`/`RemoveResource`
5. Module implements the component/service gRPC *server* for each registered resource

### Key Proto Files for Phase 3
Already generated by `buf generate`:
- `lib/viam_sdk/gen/module/v1/module.pb.ex` — module lifecycle messages + `ModuleService` stubs

### Architecture

```
viam-server
  │  spawns with --parent-address unix:///tmp/.../parent.sock
  ▼
ViamSdk.Module (supervisor + entry point)
  ├── ViamSdk.Module.Server   ← gRPC server on module's own Unix socket
  │     implements ModuleService (Ready, AddResource, ReconfigureResource, RemoveResource, ValidateConfig)
  │     implements resource component RPCs (e.g. SensorService for sensor resources)
  └── ViamSdk.Module.Parent   ← gRPC client to parent socket
        calls ModuleService.Ready on startup
```

### New Files for Phase 3
```
lib/viam_sdk/
  module.ex                         ← Module supervisor + startup (parse --parent-address)
  module/
    server.ex                       ← GRPC.Server implementation
    parent.ex                       ← GenServer client to parent socket
    resource.ex                     ← Behaviour users implement for custom resources

examples/
  my_module/
    lib/
      my_module.ex                  ← OTP Application entry point
      my_module/
        application.ex              ← OTP Application module
        my_sensor.ex                ← Sensor resource implementing ViamSdk.Module.Resource
    mix.exs                         ← Mix project with :viam_sdk path dep + :burrito
```

### Burrito Packaging

**Burrito** bundles the Erlang runtime into a self-contained executable. No Elixir/Erlang needed on the target robot.

```elixir
releases: [
  my_module: [
    steps: [:assemble, &Burrito.wrap/1],
    burrito: [
      targets: [
        linux: [os: :linux, cpu: :x86_64],
        linux_arm: [os: :linux, cpu: :aarch64]
      ]
    ]
  ]
]
```

```bash
MIX_ENV=prod mix release
# Produces: burrito_out/my_module (standalone binary)
```

---

## Testing Approach (TDD)

Three tiers:

### 1. In-process tests (primary)
Fake gRPC servers using `GRPC.Server.Supervisor.child_spec/2` + `start_supervised!/1` — server is linked to the test supervisor, cleaned up automatically. No `on_exit` needed.

```elixir
setup_all do
  child_spec = GRPC.Server.Supervisor.child_spec([ViamSdk.Test.FakeRobotServer], 0)
  start_supervised!(child_spec)
  {:ranch_embedded_sup, listener_ref} = child_spec.id
  port = :ranch.get_port(listener_ref)
  {:ok, robot} = ViamSdk.connect("localhost:#{port}", transport: :grpc)
  {:ok, robot: robot}
end
```

### 2. End-to-end tests (`@tag :integration`)
`ViamServerHelper.start!/0` spawns a real `viam-server` process, parses the `serving {"url":"http://...:PORT"}` log line to get the dynamically assigned port, and registers cleanup via OS PID capture + SIGTERM/SIGKILL.

```bash
mix test --include integration
```

### 3. Module tests (Phase 3)
Test acts as a fake viam-server parent. Connects to the module's gRPC server and exercises `AddResource` / component RPCs. Fake parent server in `test/support/fake_parent_server.ex`.

### Test files
```
test/
  support/
    fake_robot_server.ex      ← Fake RobotService
    fake_sensor_server.ex     ← Fake SensorService
    viam_server_helper.ex     ← Real viam-server process helper
    fake_parent_server.ex     ← Fake viam-server parent (Phase 3)
  viam_sdk/
    robot_test.exs            ← connect, resource_names (13 tests total, all passing)
    sensor_test.exs           ← get_readings, value decoding
    integration_test.exs      ← @tag :integration; real viam-server
  viam_sdk/module/
    server_test.exs           ← Module ready handshake, AddResource (Phase 3)
```

---

## Verification

### Current state
```bash
mix test                      # 8 unit/in-process tests — all pass
mix test --include integration # 13 tests total — all pass (requires viam-server in PATH)
```

### Phase 3
```bash
cd examples/my_module
MIX_ENV=prod mix release
# Register the module in robot config, observe viam-server loading it
```
