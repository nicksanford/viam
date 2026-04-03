defmodule Viam.Component.Button.V1.PushRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.button.v1.PushRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Button.V1.PushResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.button.v1.PushResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Button.V1.ButtonService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.component.button.v1.ButtonService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :Push, Viam.Component.Button.V1.PushRequest, Viam.Component.Button.V1.PushResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse
end

defmodule Viam.Component.Button.V1.ButtonService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Component.Button.V1.ButtonService.Service
end
