defmodule Viam.Common.V1.KinematicsFileFormat do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.common.v1.KinematicsFileFormat",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :KINEMATICS_FILE_FORMAT_UNSPECIFIED, 0
  field :KINEMATICS_FILE_FORMAT_SVA, 1
  field :KINEMATICS_FILE_FORMAT_URDF, 2
end

defmodule Viam.Common.V1.ResourceName do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.ResourceName",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :namespace, 1, type: :string
  field :type, 2, type: :string
  field :subtype, 3, type: :string
  field :name, 4, type: :string
end

defmodule Viam.Common.V1.Pose do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.Pose",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :x, 1, type: :double
  field :y, 2, type: :double
  field :z, 3, type: :double
  field :o_x, 4, type: :double, json_name: "oX"
  field :o_y, 5, type: :double, json_name: "oY"
  field :o_z, 6, type: :double, json_name: "oZ"
  field :theta, 7, type: :double
end

defmodule Viam.Common.V1.Orientation do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.Orientation",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :o_x, 1, type: :double, json_name: "oX"
  field :o_y, 2, type: :double, json_name: "oY"
  field :o_z, 3, type: :double, json_name: "oZ"
  field :theta, 4, type: :double
end

defmodule Viam.Common.V1.PoseCloud do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.PoseCloud",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :x, 1, type: :double
  field :y, 2, type: :double
  field :z, 3, type: :double
  field :o_x, 4, type: :double, json_name: "oX"
  field :o_y, 5, type: :double, json_name: "oY"
  field :o_z, 6, type: :double, json_name: "oZ"
  field :theta, 7, type: :double
end

defmodule Viam.Common.V1.PoseInFrame do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.PoseInFrame",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :reference_frame, 1, type: :string, json_name: "referenceFrame"
  field :pose, 2, type: Viam.Common.V1.Pose

  field :goal_cloud, 3,
    proto3_optional: true,
    type: Viam.Common.V1.PoseCloud,
    json_name: "goalCloud"
end

defmodule Viam.Common.V1.Vector3 do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.Vector3",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :x, 1, type: :double
  field :y, 2, type: :double
  field :z, 3, type: :double
end

defmodule Viam.Common.V1.Sphere do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.Sphere",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :radius_mm, 1, type: :double, json_name: "radiusMm"
end

defmodule Viam.Common.V1.Capsule do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.Capsule",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :radius_mm, 1, type: :double, json_name: "radiusMm"
  field :length_mm, 2, type: :double, json_name: "lengthMm"
end

defmodule Viam.Common.V1.RectangularPrism do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.RectangularPrism",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :dims_mm, 1, type: Viam.Common.V1.Vector3, json_name: "dimsMm"
end

defmodule Viam.Common.V1.Mesh do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.Mesh",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :content_type, 1, type: :string, json_name: "contentType"
  field :mesh, 2, type: :bytes
end

defmodule Viam.Common.V1.PointCloud do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.PointCloud",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :point_cloud, 1, type: :bytes, json_name: "pointCloud"
end

defmodule Viam.Common.V1.Geometry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.Geometry",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :geometry_type, 0

  field :center, 1, type: Viam.Common.V1.Pose
  field :sphere, 2, type: Viam.Common.V1.Sphere, oneof: 0
  field :box, 3, type: Viam.Common.V1.RectangularPrism, oneof: 0
  field :capsule, 5, type: Viam.Common.V1.Capsule, oneof: 0
  field :mesh, 6, type: Viam.Common.V1.Mesh, oneof: 0
  field :pointcloud, 7, type: Viam.Common.V1.PointCloud, oneof: 0
  field :label, 4, type: :string
end

defmodule Viam.Common.V1.GeometriesInFrame do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.GeometriesInFrame",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :reference_frame, 1, type: :string, json_name: "referenceFrame"
  field :geometries, 2, repeated: true, type: Viam.Common.V1.Geometry
end

defmodule Viam.Common.V1.PointCloudObject do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.PointCloudObject",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :point_cloud, 1, type: :bytes, json_name: "pointCloud"
  field :geometries, 2, type: Viam.Common.V1.GeometriesInFrame
end

defmodule Viam.Common.V1.GeoPoint do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.GeoPoint",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :latitude, 1, type: :double
  field :longitude, 2, type: :double
end

defmodule Viam.Common.V1.GeoGeometry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.GeoGeometry",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :location, 1, type: Viam.Common.V1.GeoPoint
  field :geometries, 2, repeated: true, type: Viam.Common.V1.Geometry
end

defmodule Viam.Common.V1.Transform do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.Transform",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :reference_frame, 1, type: :string, json_name: "referenceFrame"

  field :pose_in_observer_frame, 2,
    type: Viam.Common.V1.PoseInFrame,
    json_name: "poseInObserverFrame"

  field :physical_object, 3,
    proto3_optional: true,
    type: Viam.Common.V1.Geometry,
    json_name: "physicalObject"

  field :uuid, 4, type: :bytes
  field :metadata, 5, proto3_optional: true, type: Google.Protobuf.Struct
end

defmodule Viam.Common.V1.WorldState do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.WorldState",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :obstacles, 1, repeated: true, type: Viam.Common.V1.GeometriesInFrame
  field :transforms, 3, repeated: true, type: Viam.Common.V1.Transform
end

defmodule Viam.Common.V1.ActuatorStatus do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.ActuatorStatus",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :is_moving, 1, type: :bool, json_name: "isMoving"
end

defmodule Viam.Common.V1.ResponseMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.ResponseMetadata",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :captured_at, 1,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "capturedAt"
end

defmodule Viam.Common.V1.DoCommandRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.DoCommandRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :command, 2, type: Google.Protobuf.Struct
end

defmodule Viam.Common.V1.DoCommandResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.DoCommandResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :result, 1, type: Google.Protobuf.Struct
end

defmodule Viam.Common.V1.GetStatusRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.GetStatusRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
end

defmodule Viam.Common.V1.GetStatusResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.GetStatusResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :result, 1, type: Google.Protobuf.Struct
end

defmodule Viam.Common.V1.GetKinematicsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.GetKinematicsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Common.V1.GetKinematicsResponse.MeshesByUrdfFilepathEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.GetKinematicsResponse.MeshesByUrdfFilepathEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Viam.Common.V1.Mesh
end

defmodule Viam.Common.V1.GetKinematicsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.GetKinematicsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :format, 1, type: Viam.Common.V1.KinematicsFileFormat, enum: true
  field :kinematics_data, 2, type: :bytes, json_name: "kinematicsData"

  field :meshes_by_urdf_filepath, 3,
    repeated: true,
    type: Viam.Common.V1.GetKinematicsResponse.MeshesByUrdfFilepathEntry,
    json_name: "meshesByUrdfFilepath",
    map: true
end

defmodule Viam.Common.V1.GetGeometriesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.GetGeometriesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Common.V1.GetGeometriesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.GetGeometriesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :geometries, 1, repeated: true, type: Viam.Common.V1.Geometry
end

defmodule Viam.Common.V1.Get3DModelsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.Get3DModelsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Common.V1.Get3DModelsResponse.ModelsEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.Get3DModelsResponse.ModelsEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Viam.Common.V1.Mesh
end

defmodule Viam.Common.V1.Get3DModelsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.Get3DModelsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :models, 1,
    repeated: true,
    type: Viam.Common.V1.Get3DModelsResponse.ModelsEntry,
    map: true
end

defmodule Viam.Common.V1.GetReadingsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.GetReadingsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Common.V1.GetReadingsResponse.ReadingsEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.GetReadingsResponse.ReadingsEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Viam.Common.V1.GetReadingsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.GetReadingsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :readings, 1,
    repeated: true,
    type: Viam.Common.V1.GetReadingsResponse.ReadingsEntry,
    map: true
end

defmodule Viam.Common.V1.LogEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.LogEntry",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :host, 1, type: :string
  field :level, 2, type: :string
  field :time, 3, type: Google.Protobuf.Timestamp
  field :logger_name, 4, type: :string, json_name: "loggerName"
  field :message, 5, type: :string
  field :caller, 6, type: Google.Protobuf.Struct
  field :stack, 7, type: :string
  field :fields, 8, repeated: true, type: Google.Protobuf.Struct
end

defmodule Viam.Common.V1.AudioInfo do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.AudioInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :codec, 1, type: :string
  field :sample_rate_hz, 2, type: :int32, json_name: "sampleRateHz"
  field :num_channels, 3, type: :int32, json_name: "numChannels"
end

defmodule Viam.Common.V1.GetPropertiesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.GetPropertiesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Common.V1.GetPropertiesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.common.v1.GetPropertiesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :supported_codecs, 1, repeated: true, type: :string, json_name: "supportedCodecs"
  field :sample_rate_hz, 2, type: :int32, json_name: "sampleRateHz"
  field :num_channels, 3, type: :int32, json_name: "numChannels"
end
