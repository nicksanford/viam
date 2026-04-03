defmodule Viam.Component.Arm.V1.GetEndPositionRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.arm.v1.GetEndPositionRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Arm.V1.GetEndPositionResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.arm.v1.GetEndPositionResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :pose, 1, type: Viam.Common.V1.Pose
end

defmodule Viam.Component.Arm.V1.JointPositions do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.arm.v1.JointPositions",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :values, 1, repeated: true, type: :double
end

defmodule Viam.Component.Arm.V1.GetJointPositionsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.arm.v1.GetJointPositionsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Arm.V1.GetJointPositionsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.arm.v1.GetJointPositionsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :positions, 1, type: Viam.Component.Arm.V1.JointPositions
end

defmodule Viam.Component.Arm.V1.MoveToPositionRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.arm.v1.MoveToPositionRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :to, 2, type: Viam.Common.V1.Pose
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Arm.V1.MoveToPositionResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.arm.v1.MoveToPositionResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Arm.V1.MoveToJointPositionsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.arm.v1.MoveToJointPositionsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :positions, 2, type: Viam.Component.Arm.V1.JointPositions
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Arm.V1.MoveToJointPositionsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.arm.v1.MoveToJointPositionsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Arm.V1.MoveThroughJointPositionsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.arm.v1.MoveThroughJointPositionsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :positions, 2, repeated: true, type: Viam.Component.Arm.V1.JointPositions
  field :options, 3, proto3_optional: true, type: Viam.Component.Arm.V1.MoveOptions
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Arm.V1.MoveThroughJointPositionsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.arm.v1.MoveThroughJointPositionsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Arm.V1.StopRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.arm.v1.StopRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Arm.V1.StopResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.arm.v1.StopResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Arm.V1.Status do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.arm.v1.Status",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :end_position, 1, type: Viam.Common.V1.Pose, json_name: "endPosition"

  field :joint_positions, 2,
    type: Viam.Component.Arm.V1.JointPositions,
    json_name: "jointPositions"

  field :is_moving, 3, type: :bool, json_name: "isMoving"
end

defmodule Viam.Component.Arm.V1.IsMovingRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.arm.v1.IsMovingRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
end

defmodule Viam.Component.Arm.V1.IsMovingResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.arm.v1.IsMovingResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :is_moving, 1, type: :bool, json_name: "isMoving"
end

defmodule Viam.Component.Arm.V1.MoveOptions do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.arm.v1.MoveOptions",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :max_vel_degs_per_sec, 1,
    proto3_optional: true,
    type: :double,
    json_name: "maxVelDegsPerSec"

  field :max_acc_degs_per_sec2, 2,
    proto3_optional: true,
    type: :double,
    json_name: "maxAccDegsPerSec2"

  field :max_vel_degs_per_sec_joints, 3,
    repeated: true,
    type: :double,
    json_name: "maxVelDegsPerSecJoints"

  field :max_acc_degs_per_sec2_joints, 4,
    repeated: true,
    type: :double,
    json_name: "maxAccDegsPerSec2Joints"
end

defmodule Viam.Component.Arm.V1.ArmService.Service do
  @moduledoc false

  use GRPC.Service, name: "viam.component.arm.v1.ArmService", protoc_gen_elixir_version: "0.16.0"

  rpc :GetEndPosition,
      Viam.Component.Arm.V1.GetEndPositionRequest,
      Viam.Component.Arm.V1.GetEndPositionResponse

  rpc :MoveToPosition,
      Viam.Component.Arm.V1.MoveToPositionRequest,
      Viam.Component.Arm.V1.MoveToPositionResponse

  rpc :GetJointPositions,
      Viam.Component.Arm.V1.GetJointPositionsRequest,
      Viam.Component.Arm.V1.GetJointPositionsResponse

  rpc :MoveToJointPositions,
      Viam.Component.Arm.V1.MoveToJointPositionsRequest,
      Viam.Component.Arm.V1.MoveToJointPositionsResponse

  rpc :MoveThroughJointPositions,
      Viam.Component.Arm.V1.MoveThroughJointPositionsRequest,
      Viam.Component.Arm.V1.MoveThroughJointPositionsResponse

  rpc :Stop, Viam.Component.Arm.V1.StopRequest, Viam.Component.Arm.V1.StopResponse

  rpc :IsMoving, Viam.Component.Arm.V1.IsMovingRequest, Viam.Component.Arm.V1.IsMovingResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse

  rpc :GetKinematics, Viam.Common.V1.GetKinematicsRequest, Viam.Common.V1.GetKinematicsResponse

  rpc :GetGeometries, Viam.Common.V1.GetGeometriesRequest, Viam.Common.V1.GetGeometriesResponse

  rpc :Get3DModels, Viam.Common.V1.Get3DModelsRequest, Viam.Common.V1.Get3DModelsResponse
end

defmodule Viam.Component.Arm.V1.ArmService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Component.Arm.V1.ArmService.Service
end
