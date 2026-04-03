defmodule Viam.Component.Gripper.V1.OpenRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.gripper.v1.OpenRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Gripper.V1.OpenResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.gripper.v1.OpenResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Gripper.V1.GrabRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.gripper.v1.GrabRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Gripper.V1.GrabResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.gripper.v1.GrabResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :success, 1, type: :bool
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Gripper.V1.StopRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.gripper.v1.StopRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Gripper.V1.StopResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.gripper.v1.StopResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Gripper.V1.IsMovingRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.gripper.v1.IsMovingRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
end

defmodule Viam.Component.Gripper.V1.IsMovingResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.gripper.v1.IsMovingResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :is_moving, 1, type: :bool, json_name: "isMoving"
end

defmodule Viam.Component.Gripper.V1.IsHoldingSomethingRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.gripper.v1.IsHoldingSomethingRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Gripper.V1.IsHoldingSomethingResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.gripper.v1.IsHoldingSomethingResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :is_holding_something, 1, type: :bool, json_name: "isHoldingSomething"
  field :meta, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Gripper.V1.GripperService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.component.gripper.v1.GripperService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :Open, Viam.Component.Gripper.V1.OpenRequest, Viam.Component.Gripper.V1.OpenResponse

  rpc :Grab, Viam.Component.Gripper.V1.GrabRequest, Viam.Component.Gripper.V1.GrabResponse

  rpc :Stop, Viam.Component.Gripper.V1.StopRequest, Viam.Component.Gripper.V1.StopResponse

  rpc :IsMoving,
      Viam.Component.Gripper.V1.IsMovingRequest,
      Viam.Component.Gripper.V1.IsMovingResponse

  rpc :IsHoldingSomething,
      Viam.Component.Gripper.V1.IsHoldingSomethingRequest,
      Viam.Component.Gripper.V1.IsHoldingSomethingResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse

  rpc :GetGeometries, Viam.Common.V1.GetGeometriesRequest, Viam.Common.V1.GetGeometriesResponse

  rpc :GetKinematics, Viam.Common.V1.GetKinematicsRequest, Viam.Common.V1.GetKinematicsResponse
end

defmodule Viam.Component.Gripper.V1.GripperService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Component.Gripper.V1.GripperService.Service
end
