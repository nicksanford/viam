defmodule Viam.Component.Switch.V1.SetPositionRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.switch.v1.SetPositionRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :position, 2, type: :uint32
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Switch.V1.SetPositionResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.switch.v1.SetPositionResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Switch.V1.GetPositionRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.switch.v1.GetPositionRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Switch.V1.GetPositionResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.switch.v1.GetPositionResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :position, 1, type: :uint32
end

defmodule Viam.Component.Switch.V1.GetNumberOfPositionsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.switch.v1.GetNumberOfPositionsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Switch.V1.GetNumberOfPositionsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.switch.v1.GetNumberOfPositionsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :number_of_positions, 1, type: :uint32, json_name: "numberOfPositions"
  field :labels, 2, repeated: true, type: :string
end

defmodule Viam.Component.Switch.V1.SwitchService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.component.switch.v1.SwitchService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :SetPosition,
      Viam.Component.Switch.V1.SetPositionRequest,
      Viam.Component.Switch.V1.SetPositionResponse

  rpc :GetPosition,
      Viam.Component.Switch.V1.GetPositionRequest,
      Viam.Component.Switch.V1.GetPositionResponse

  rpc :GetNumberOfPositions,
      Viam.Component.Switch.V1.GetNumberOfPositionsRequest,
      Viam.Component.Switch.V1.GetNumberOfPositionsResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse
end

defmodule Viam.Component.Switch.V1.SwitchService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Component.Switch.V1.SwitchService.Service
end
