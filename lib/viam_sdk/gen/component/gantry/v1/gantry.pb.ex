defmodule Viam.Component.Gantry.V1.GetPositionRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.gantry.v1.GetPositionRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Gantry.V1.GetPositionResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.gantry.v1.GetPositionResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :positions_mm, 1, repeated: true, type: :double, json_name: "positionsMm"
end

defmodule Viam.Component.Gantry.V1.MoveToPositionRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.gantry.v1.MoveToPositionRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :positions_mm, 2, repeated: true, type: :double, json_name: "positionsMm"
  field :speeds_mm_per_sec, 3, repeated: true, type: :double, json_name: "speedsMmPerSec"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Gantry.V1.MoveToPositionResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.gantry.v1.MoveToPositionResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Gantry.V1.HomeRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.gantry.v1.HomeRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Gantry.V1.HomeResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.gantry.v1.HomeResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :homed, 1, type: :bool
end

defmodule Viam.Component.Gantry.V1.GetLengthsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.gantry.v1.GetLengthsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Gantry.V1.GetLengthsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.gantry.v1.GetLengthsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :lengths_mm, 1, repeated: true, type: :double, json_name: "lengthsMm"
end

defmodule Viam.Component.Gantry.V1.StopRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.gantry.v1.StopRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Gantry.V1.StopResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.gantry.v1.StopResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Gantry.V1.Status do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.gantry.v1.Status",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :positions_mm, 1, repeated: true, type: :double, json_name: "positionsMm"
  field :lengths_mm, 2, repeated: true, type: :double, json_name: "lengthsMm"
  field :is_moving, 3, type: :bool, json_name: "isMoving"
end

defmodule Viam.Component.Gantry.V1.IsMovingRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.gantry.v1.IsMovingRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
end

defmodule Viam.Component.Gantry.V1.IsMovingResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.gantry.v1.IsMovingResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :is_moving, 1, type: :bool, json_name: "isMoving"
end

defmodule Viam.Component.Gantry.V1.GantryService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.component.gantry.v1.GantryService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :GetPosition,
      Viam.Component.Gantry.V1.GetPositionRequest,
      Viam.Component.Gantry.V1.GetPositionResponse

  rpc :MoveToPosition,
      Viam.Component.Gantry.V1.MoveToPositionRequest,
      Viam.Component.Gantry.V1.MoveToPositionResponse

  rpc :Home, Viam.Component.Gantry.V1.HomeRequest, Viam.Component.Gantry.V1.HomeResponse

  rpc :GetLengths,
      Viam.Component.Gantry.V1.GetLengthsRequest,
      Viam.Component.Gantry.V1.GetLengthsResponse

  rpc :Stop, Viam.Component.Gantry.V1.StopRequest, Viam.Component.Gantry.V1.StopResponse

  rpc :IsMoving,
      Viam.Component.Gantry.V1.IsMovingRequest,
      Viam.Component.Gantry.V1.IsMovingResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse

  rpc :GetKinematics, Viam.Common.V1.GetKinematicsRequest, Viam.Common.V1.GetKinematicsResponse

  rpc :GetGeometries, Viam.Common.V1.GetGeometriesRequest, Viam.Common.V1.GetGeometriesResponse
end

defmodule Viam.Component.Gantry.V1.GantryService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Component.Gantry.V1.GantryService.Service
end
