defmodule Viam.Component.Posetracker.V1.GetPosesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.posetracker.v1.GetPosesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :body_names, 2, repeated: true, type: :string, json_name: "bodyNames"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Posetracker.V1.GetPosesResponse.BodyPosesEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.posetracker.v1.GetPosesResponse.BodyPosesEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Viam.Common.V1.PoseInFrame
end

defmodule Viam.Component.Posetracker.V1.GetPosesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.posetracker.v1.GetPosesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :body_poses, 1,
    repeated: true,
    type: Viam.Component.Posetracker.V1.GetPosesResponse.BodyPosesEntry,
    json_name: "bodyPoses",
    map: true
end

defmodule Viam.Component.Posetracker.V1.PoseTrackerService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.component.posetracker.v1.PoseTrackerService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :GetPoses,
      Viam.Component.Posetracker.V1.GetPosesRequest,
      Viam.Component.Posetracker.V1.GetPosesResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse

  rpc :GetGeometries, Viam.Common.V1.GetGeometriesRequest, Viam.Common.V1.GetGeometriesResponse
end

defmodule Viam.Component.Posetracker.V1.PoseTrackerService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Component.Posetracker.V1.PoseTrackerService.Service
end
