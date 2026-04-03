defmodule Viam.Component.Servo.V1.MoveRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.servo.v1.MoveRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :angle_deg, 2, type: :uint32, json_name: "angleDeg"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Servo.V1.MoveResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.servo.v1.MoveResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Servo.V1.GetPositionRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.servo.v1.GetPositionRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Servo.V1.GetPositionResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.servo.v1.GetPositionResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :position_deg, 1, type: :uint32, json_name: "positionDeg"
end

defmodule Viam.Component.Servo.V1.StopRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.servo.v1.StopRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Servo.V1.StopResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.servo.v1.StopResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Servo.V1.Status do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.servo.v1.Status",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :position_deg, 1, type: :uint32, json_name: "positionDeg"
  field :is_moving, 2, type: :bool, json_name: "isMoving"
end

defmodule Viam.Component.Servo.V1.IsMovingRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.servo.v1.IsMovingRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
end

defmodule Viam.Component.Servo.V1.IsMovingResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.servo.v1.IsMovingResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :is_moving, 1, type: :bool, json_name: "isMoving"
end

defmodule Viam.Component.Servo.V1.ServoService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.component.servo.v1.ServoService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :Move, Viam.Component.Servo.V1.MoveRequest, Viam.Component.Servo.V1.MoveResponse

  rpc :GetPosition,
      Viam.Component.Servo.V1.GetPositionRequest,
      Viam.Component.Servo.V1.GetPositionResponse

  rpc :Stop, Viam.Component.Servo.V1.StopRequest, Viam.Component.Servo.V1.StopResponse

  rpc :IsMoving, Viam.Component.Servo.V1.IsMovingRequest, Viam.Component.Servo.V1.IsMovingResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse

  rpc :GetGeometries, Viam.Common.V1.GetGeometriesRequest, Viam.Common.V1.GetGeometriesResponse
end

defmodule Viam.Component.Servo.V1.ServoService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Component.Servo.V1.ServoService.Service
end
