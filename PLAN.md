# Viam Elixir SDK – Implementation Plan

## Context

Viam is a robotics platform where `viam-server` runs on the robot and exposes a gRPC API for controlling components (sensors, motors, cameras, etc.). The SDK covers three distinct roles:

- **Phase 1** — SDK *client*: connect to a local `viam-server` over direct gRPC and read a sensor
- **Phase 2** — WebRTC transport: connect to remote robots via the Viam cloud signaling relay
- **Phase 3** — Module *server*: host custom resources in Elixir, packaged as self-contained binaries

Starting from bare `mix new` scaffold at `/home/user/viam_sdk/`.

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
  - buf.build/viamrobotics/api

plugins:
  - local: protoc-gen-elixir
    out: lib/viam_sdk/gen
    opt:
      - plugins=grpc
    strategy: all   # REQUIRED: Elixir plugin needs all files in one pass
    include_imports: true
```

### Regenerate stubs
```bash
buf generate
```

Generated output committed to `lib/viam_sdk/gen/`. README documents the full workflow.

---

## Phase 1: Direct gRPC Client

### File Structure
```
mix.exs                             ← :grpc, :protobuf deps; :mod → ViamSdk.Application
buf.gen.yaml
README.md
lib/
  viam_sdk.ex                       ← public API
  viam_sdk/
    application.ex                  ← starts ViamSdk.RobotSupervisor (DynamicSupervisor)
    robot.ex                        ← GenServer owning GRPC.Channel
    gen/                            ← buf-generated stubs (committed)
```

### Supervision Architecture

`ViamSdk.Application` starts `ViamSdk.RobotSupervisor` (a `DynamicSupervisor`).

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

`connect/2` takes the URI as the first argument and a keyword list for options. Transport is required via the `:transport` key:

```elixir
# Phase 1: direct gRPC over TCP
{:ok, robot} = ViamSdk.connect("localhost:8080", transport: :grpc)

# Phase 2: WebRTC (future)
{:ok, robot} = ViamSdk.connect("robot-name.viam.cloud",
  transport: :webrtc,
  credentials: %{type: :api_key, key: "..."}
)

{:ok, names} = ViamSdk.resource_names(robot)
{:ok, data}  = ViamSdk.get_readings(robot, "my-sensor")
```

`connect/2` dispatches on `transport:` option; each clause starts the appropriate `ViamSdk.Robot` variant under `ViamSdk.RobotSupervisor`.

### Documentation & Specs

All public modules and functions must have:
- `@moduledoc` on every module
- `@doc` on every public function
- `@spec` on every public function

This applies to `ViamSdk`, `ViamSdk.Robot`, and all Phase 3 public modules.

---

## Phase 2: WebRTC Transport (deferred)

Viam's WebRTC transport is **not** standard HTTP/2 gRPC — it uses a custom multiplexing protocol over SCTP data channels (`proto/rpc/webrtc/v1/grpc.proto` in `go.viam.com/utils`):

- One reliable ordered data channel named `"rpc"`
- 4-byte big-endian length-prefixed protobuf `Request`/`Response` frames
- Each frame has a `stream` ID for call multiplexing

New modules:
- `ViamSdk.WebRTC.Signaling` – HTTP signaling client (SDP offer/answer + ICE candidates)
- `ViamSdk.WebRTC.Channel` – GenServer implementing the multiplexing protocol over the data channel

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
Generated by `buf generate` from the same API:
- `viam/module/v1/module.pb.ex` + `module_service.grpc.pb.ex` — module lifecycle RPCs
- Component server stubs (e.g. `SensorService`) — module implements these as gRPC server

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
      my_module.ex                  ← OTP Application module entry point
      my_module/
        application.ex              ← OTP Application module for the example
        my_sensor.ex                ← Sensor resource implementing ViamSdk.Module.Resource
    mix.exs                         ← Mix project with :viam_sdk path dep + :burrito
```

### Burrito Packaging

**Burrito** (hex.pm/packages/burrito) wraps a Mix release into a self-contained executable that bundles the Erlang runtime. No Elixir/Erlang needed on the target robot.

Add to the example module's `mix.exs`:
```elixir
def project do
  [
    releases: [
      my_sensor: [
        steps: [:assemble, &Burrito.wrap/1],
        burrito: [
          targets: [
            linux: [os: :linux, cpu: :x86_64],
            linux_arm: [os: :linux, cpu: :aarch64],
          ]
        ]
      ]
    ]
  ]
end
```

Build:
```bash
MIX_ENV=prod mix release
# Produces: burrito_out/my_sensor (standalone binary)
```

---

## Testing Approach (TDD)

### Reference
- **Python SDK** uses in-process gRPC channels (`grpclib.testing.ChannelFor`) — no real network; client and fake server run in the same test process. Fake services live in `tests/mocks/`.
- **Go RDK** uses struct injection (inject package with overrideable function fields) — allows mixing real and fake components. Also supports spinning up a real server subprocess for integration tests.

### Elixir TDD Strategy

**Unit tests** (pure logic, no gRPC): test message encoding, response parsing, resource type filtering — no server needed.

**Integration tests** (client ↔ fake server in-process): spin up a `GRPC.Server` on a random port in `setup`, connect a `GRPC.Stub` to it, tear down in `on_exit`. This mirrors the Python SDK's `ChannelFor` pattern and is the primary test vehicle.

```elixir
# test/support/fake_robot_server.ex
defmodule ViamSdk.Test.FakeRobotServer do
  use GRPC.Server, service: Viam.Robot.V1.RobotService

  def resource_names(_req, _stream) do
    %Viam.Robot.V1.ResourceNamesResponse{resources: [...]}
  end
end

# test/viam_sdk/robot_test.exs
setup do
  {:ok, _, port} = GRPC.Server.start(ViamSdk.Test.FakeRobotServer, 0)
  on_exit(fn -> GRPC.Server.stop(ViamSdk.Test.FakeRobotServer) end)
  {:ok, port: port}
end

test "resource_names returns list", %{port: port} do
  {:ok, robot} = ViamSdk.connect("localhost:#{port}", transport: :grpc)
  assert {:ok, [%{name: "fake-sensor"}]} = ViamSdk.resource_names(robot)
end
```

**Module tests** (Phase 3): flip the relationship — the test acts as a fake viam-server parent, connects to the module's gRPC server, and exercises `AddResource` / component RPCs.

### Test Files
```
test/
  support/
    fake_robot_server.ex      ← Fake RobotService for client tests
    fake_sensor_server.ex     ← Fake SensorService for client tests
    fake_parent_server.ex     ← Fake viam-server parent for module tests (Phase 3)
  viam_sdk/
    robot_test.exs            ← ViamSdk.connect, resource_names
    sensor_test.exs           ← get_readings, response decoding
  viam_sdk/module/
    server_test.exs           ← Module ready handshake, AddResource (Phase 3)
```

**End-to-end tests against real viam-server** (optional, requires `viam-server` in `PATH`): spin up a real `viam-server` process using a committed `test/fixtures/fake_robot.json` config that has one of every built-in fake component (`"model": "fake"`). Use `ExUnit`'s `@tag :integration` to keep these separate from unit/integration tests. The test config uses the minimal subset of fake components and the server binds to a random port passed via env var.

```json
// test/fixtures/fake_robot.json
{
  "network": { "bind_address": ":${TEST_PORT}" },
  "components": [
    { "name": "sensor1", "model": "fake", "api": "rdk:component:sensor", "attributes": {} },
    { "name": "arm1", "model": "fake", "api": "rdk:component:arm", "attributes": { "arm-model": "fake" } },
    { "name": "motor1", "model": "fake", "api": "rdk:component:motor", "attributes": {} },
    { "name": "base1", "model": "fake", "api": "rdk:component:base", "attributes": {} },
    { "name": "camera1", "model": "fake", "api": "rdk:component:camera", "attributes": {} },
    { "name": "gripper1", "model": "fake", "api": "rdk:component:gripper", "attributes": {} },
    { "name": "movement_sensor1", "model": "fake", "api": "rdk:component:movement_sensor", "attributes": {} },
    { "name": "power_sensor1", "model": "fake", "api": "rdk:component:power_sensor", "attributes": {} }
  ]
}
```

The test helper starts `viam-server -config test/fixtures/fake_robot.json` in a `setup_all`, waits for it to be healthy, connects with `ViamSdk.connect/1`, runs every client method against the fake resources, and shuts down in `on_exit`.

```elixir
@tag :integration
test "sensor get_readings against real viam-server" do
  {:ok, data} = ViamSdk.get_readings(@robot, "sensor1")
  assert is_map(data)
  assert Map.has_key?(data, "a")
end
```

Run integration tests with: `mix test --include integration`

Write tests first for:
1. Connecting to a fake server and getting resource names
2. `get_readings` returning a map of decoded sensor values
3. Module `Ready` handshake with fake parent (Phase 3)
4. (Integration) Every client method against real viam-server fake components

---

## Verification

### Phase 1
```bash
mix deps.get && mix compile
mix test

# Against real viam-server:
iex -S mix
{:ok, robot} = ViamSdk.connect("localhost:8080", transport: :grpc)
{:ok, names} = ViamSdk.resource_names(robot)
{:ok, data}  = ViamSdk.get_readings(robot, hd(names).name)
```

### Phase 3
```bash
cd examples/my_sensor
MIX_ENV=prod mix release
# Register the module in robot config, observe viam-server loading it
```

Default viam-server gRPC port: **8080**
