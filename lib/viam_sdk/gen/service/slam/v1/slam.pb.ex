defmodule Viam.Service.Slam.V1.MappingMode do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.service.slam.v1.MappingMode",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :MAPPING_MODE_UNSPECIFIED, 0
  field :MAPPING_MODE_CREATE_NEW_MAP, 1
  field :MAPPING_MODE_LOCALIZE_ONLY, 2
  field :MAPPING_MODE_UPDATE_EXISTING_MAP, 3
end

defmodule Viam.Service.Slam.V1.SensorType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.service.slam.v1.SensorType",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :SENSOR_TYPE_UNSPECIFIED, 0
  field :SENSOR_TYPE_CAMERA, 1
  field :SENSOR_TYPE_MOVEMENT_SENSOR, 2
end

defmodule Viam.Service.Slam.V1.GetPositionRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.slam.v1.GetPositionRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
end

defmodule Viam.Service.Slam.V1.GetPositionResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.slam.v1.GetPositionResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :pose, 1, type: Viam.Common.V1.Pose
end

defmodule Viam.Service.Slam.V1.GetPointCloudMapRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.slam.v1.GetPointCloudMapRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :return_edited_map, 2, proto3_optional: true, type: :bool, json_name: "returnEditedMap"
end

defmodule Viam.Service.Slam.V1.GetPointCloudMapResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.slam.v1.GetPointCloudMapResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :point_cloud_pcd_chunk, 1, type: :bytes, json_name: "pointCloudPcdChunk"
end

defmodule Viam.Service.Slam.V1.GetInternalStateRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.slam.v1.GetInternalStateRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
end

defmodule Viam.Service.Slam.V1.GetInternalStateResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.slam.v1.GetInternalStateResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :internal_state_chunk, 1, type: :bytes, json_name: "internalStateChunk"
end

defmodule Viam.Service.Slam.V1.GetPropertiesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.slam.v1.GetPropertiesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
end

defmodule Viam.Service.Slam.V1.GetPropertiesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.slam.v1.GetPropertiesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :cloud_slam, 1, type: :bool, json_name: "cloudSlam"

  field :mapping_mode, 2,
    type: Viam.Service.Slam.V1.MappingMode,
    json_name: "mappingMode",
    enum: true

  field :internal_state_file_type, 3,
    proto3_optional: true,
    type: :string,
    json_name: "internalStateFileType"

  field :sensor_info, 4,
    repeated: true,
    type: Viam.Service.Slam.V1.SensorInfo,
    json_name: "sensorInfo"
end

defmodule Viam.Service.Slam.V1.SensorInfo do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.slam.v1.SensorInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: Viam.Service.Slam.V1.SensorType, enum: true
end

defmodule Viam.Service.Slam.V1.SLAMService.Service do
  @moduledoc false

  use GRPC.Service, name: "viam.service.slam.v1.SLAMService", protoc_gen_elixir_version: "0.16.0"

  rpc :GetPosition,
      Viam.Service.Slam.V1.GetPositionRequest,
      Viam.Service.Slam.V1.GetPositionResponse

  rpc :GetPointCloudMap,
      Viam.Service.Slam.V1.GetPointCloudMapRequest,
      stream(Viam.Service.Slam.V1.GetPointCloudMapResponse)

  rpc :GetInternalState,
      Viam.Service.Slam.V1.GetInternalStateRequest,
      stream(Viam.Service.Slam.V1.GetInternalStateResponse)

  rpc :GetProperties,
      Viam.Service.Slam.V1.GetPropertiesRequest,
      Viam.Service.Slam.V1.GetPropertiesResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse
end

defmodule Viam.Service.Slam.V1.SLAMService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Service.Slam.V1.SLAMService.Service
end
