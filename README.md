# Viam Elixir SDK

An Elixir SDK for [Viam](https://www.viam.com) — a robotics platform. Connects to a running `viam-server` instance and provides access to robot components (sensors, motors, cameras, etc.) via gRPC.

## Status

**Phase 1 — complete:** Direct gRPC client for local `viam-server` instances.  
**Phase 2 — planned:** WebRTC transport for cloud/remote robot connections.  
**Phase 3 — planned:** Module server support (host custom resources in Elixir, packaged as self-contained binaries with Burrito).

## Usage

```elixir
# Connect to a local viam-server (transport is required)
{:ok, robot} = ViamSdk.connect("localhost:8080", transport: :grpc)

# List all available components and services
{:ok, names} = ViamSdk.resource_names(robot)

# Read sensor data
{:ok, data} = ViamSdk.get_readings(robot, "my-sensor")
# => %{"temperature" => 22.5, "humidity" => 60.1}
```

## Supervision

`ViamSdk.connect/2` starts a supervised `ViamSdk.Robot` GenServer under the SDK's `DynamicSupervisor`. For full control, add it to your own supervision tree:

```elixir
children = [
  {ViamSdk.Robot, address: "localhost:8080", name: :my_robot}
]
```

## Development Setup

### Prerequisites

- Elixir ~> 1.19
- [buf CLI](https://buf.build/docs/installation) — for regenerating gRPC stubs
- `protoc-gen-elixir` escript — for code generation

### Install protoc-gen-elixir

```bash
mix escript.install hex protobuf
export PATH=~/.mix/escripts:$PATH  # add to your shell profile
```

On macOS with asdf, the path is typically:
```bash
export PATH="$HOME/.asdf/installs/elixir/<version>/.mix/escripts:$PATH"
```

### Install buf

```bash
# macOS
brew install bufbuild/buf/buf

# Linux (x86_64)
curl -sSL https://github.com/bufbuild/buf/releases/latest/download/buf-Linux-x86_64 \
  -o /usr/local/bin/buf && chmod +x /usr/local/bin/buf
```

### Regenerating gRPC stubs

The generated stubs in `lib/viam_sdk/gen/` are committed and ready to use. To regenerate them when the [Viam API](https://github.com/viamrobotics/api) changes:

```bash
buf generate
```

This pulls the latest proto definitions from `buf.build/viamrobotics/api` and regenerates all Elixir message and service stub files.

## Running tests

```bash
# Unit + in-process integration tests (default)
mix test

# Include end-to-end tests against a real viam-server
# Requires viam-server in PATH, running on a configured port
mix test --include integration
```

## Dependencies

| Package | Purpose |
|---------|---------|
| `grpc ~> 0.11` | gRPC client (and server for Phase 3) |
| `protobuf ~> 0.13` | Protobuf message encoding/decoding |

Phase 2 will add `ex_webrtc` + `ex_sctp` for WebRTC transport.  
Phase 3 will add `burrito` for standalone binary packaging.
