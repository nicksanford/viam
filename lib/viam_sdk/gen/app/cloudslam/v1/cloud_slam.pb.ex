defmodule Viam.App.Cloudslam.V1.EndStatus do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.cloudslam.v1.EndStatus",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :END_STATUS_UNSPECIFIED, 0
  field :END_STATUS_SUCCESS, 1
  field :END_STATUS_TIMEOUT, 2
  field :END_STATUS_FAIL, 3
end

defmodule Viam.App.Cloudslam.V1.StartMappingSessionRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.cloudslam.v1.StartMappingSessionRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :slam_version, 1, type: :string, json_name: "slamVersion"
  field :viam_server_version, 2, type: :string, json_name: "viamServerVersion"
  field :map_name, 3, type: :string, json_name: "mapName"
  field :organization_id, 4, type: :string, json_name: "organizationId"
  field :location_id, 5, type: :string, json_name: "locationId"
  field :robot_id, 6, type: :string, json_name: "robotId"

  field :capture_interval, 7,
    type: Viam.App.Cloudslam.V1.CaptureInterval,
    json_name: "captureInterval"

  field :sensors, 8, repeated: true, type: Viam.App.Cloudslam.V1.SensorInfo
  field :slam_config, 10, type: Google.Protobuf.Struct, json_name: "slamConfig"
  field :existing_map_version, 11, type: :string, json_name: "existingMapVersion"
  field :module, 12, type: Viam.App.Cloudslam.V1.Module
end

defmodule Viam.App.Cloudslam.V1.Module do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.cloudslam.v1.Module",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 2, type: :string
  field :module_id, 3, type: :string, json_name: "moduleId"
  field :version, 4, type: :string
end

defmodule Viam.App.Cloudslam.V1.SensorInfo do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.cloudslam.v1.SensorInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :source_component_name, 1, type: :string, json_name: "sourceComponentName"
  field :type, 2, type: :string
  field :data_frequency_hz, 3, type: :string, json_name: "dataFrequencyHz"
end

defmodule Viam.App.Cloudslam.V1.CaptureInterval do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.cloudslam.v1.CaptureInterval",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :start_time, 1, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 2, type: Google.Protobuf.Timestamp, json_name: "endTime"
end

defmodule Viam.App.Cloudslam.V1.StartMappingSessionResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.cloudslam.v1.StartMappingSessionResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :session_id, 1, type: :string, json_name: "sessionId"
end

defmodule Viam.App.Cloudslam.V1.GetActiveMappingSessionsForRobotRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.cloudslam.v1.GetActiveMappingSessionsForRobotRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :robot_id, 1, type: :string, json_name: "robotId"
end

defmodule Viam.App.Cloudslam.V1.GetActiveMappingSessionsForRobotResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.cloudslam.v1.GetActiveMappingSessionsForRobotResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :session_id, 1, type: :string, json_name: "sessionId"
end

defmodule Viam.App.Cloudslam.V1.GetMappingSessionPointCloudRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.cloudslam.v1.GetMappingSessionPointCloudRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :session_id, 1, type: :string, json_name: "sessionId"
end

defmodule Viam.App.Cloudslam.V1.GetMappingSessionPointCloudResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.cloudslam.v1.GetMappingSessionPointCloudResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :map_url, 1, type: :string, json_name: "mapUrl"
  field :pose, 2, type: Viam.Common.V1.Pose
end

defmodule Viam.App.Cloudslam.V1.ListMappingSessionsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.cloudslam.v1.ListMappingSessionsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :location_id, 2, type: :string, json_name: "locationId"
end

defmodule Viam.App.Cloudslam.V1.ListMappingSessionsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.cloudslam.v1.ListMappingSessionsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :session, 1, repeated: true, type: Viam.App.Cloudslam.V1.MappingMetadata
end

defmodule Viam.App.Cloudslam.V1.StopMappingSessionRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.cloudslam.v1.StopMappingSessionRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :session_id, 1, type: :string, json_name: "sessionId"
end

defmodule Viam.App.Cloudslam.V1.StopMappingSessionResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.cloudslam.v1.StopMappingSessionResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :package_id, 1, type: :string, json_name: "packageId"
  field :version, 2, type: :string
end

defmodule Viam.App.Cloudslam.V1.GetMappingSessionMetadataByIDRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.cloudslam.v1.GetMappingSessionMetadataByIDRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :session_id, 1, type: :string, json_name: "sessionId"
end

defmodule Viam.App.Cloudslam.V1.GetMappingSessionMetadataByIDResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.cloudslam.v1.GetMappingSessionMetadataByIDResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :session_metadata, 1,
    type: Viam.App.Cloudslam.V1.MappingMetadata,
    json_name: "sessionMetadata"
end

defmodule Viam.App.Cloudslam.V1.MappingMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.cloudslam.v1.MappingMetadata",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
  field :location_id, 2, type: :string, json_name: "locationId"
  field :robot_id, 3, type: :string, json_name: "robotId"
  field :time_start_submitted, 4, type: Google.Protobuf.Timestamp, json_name: "timeStartSubmitted"

  field :time_cloud_run_job_started, 5,
    type: Google.Protobuf.Timestamp,
    json_name: "timeCloudRunJobStarted"

  field :time_end_submitted, 6, type: Google.Protobuf.Timestamp, json_name: "timeEndSubmitted"

  field :time_cloud_run_job_ended, 7,
    type: Google.Protobuf.Timestamp,
    json_name: "timeCloudRunJobEnded"

  field :end_status, 8, type: Viam.App.Cloudslam.V1.EndStatus, json_name: "endStatus", enum: true
  field :cloud_run_job_id, 9, type: :string, json_name: "cloudRunJobId"
  field :viam_server_version, 10, type: :string, json_name: "viamServerVersion"
  field :map_name, 11, type: :string, json_name: "mapName"
  field :slam_version, 12, type: :string, json_name: "slamVersion"
  field :config, 13, type: :string
  field :error_msg, 14, type: :string, json_name: "errorMsg"
end

defmodule Viam.App.Cloudslam.V1.CloudSLAMService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.app.cloudslam.v1.CloudSLAMService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :StartMappingSession,
      Viam.App.Cloudslam.V1.StartMappingSessionRequest,
      Viam.App.Cloudslam.V1.StartMappingSessionResponse

  rpc :GetActiveMappingSessionsForRobot,
      Viam.App.Cloudslam.V1.GetActiveMappingSessionsForRobotRequest,
      Viam.App.Cloudslam.V1.GetActiveMappingSessionsForRobotResponse

  rpc :GetMappingSessionPointCloud,
      Viam.App.Cloudslam.V1.GetMappingSessionPointCloudRequest,
      Viam.App.Cloudslam.V1.GetMappingSessionPointCloudResponse

  rpc :ListMappingSessions,
      Viam.App.Cloudslam.V1.ListMappingSessionsRequest,
      Viam.App.Cloudslam.V1.ListMappingSessionsResponse

  rpc :StopMappingSession,
      Viam.App.Cloudslam.V1.StopMappingSessionRequest,
      Viam.App.Cloudslam.V1.StopMappingSessionResponse

  rpc :GetMappingSessionMetadataByID,
      Viam.App.Cloudslam.V1.GetMappingSessionMetadataByIDRequest,
      Viam.App.Cloudslam.V1.GetMappingSessionMetadataByIDResponse
end

defmodule Viam.App.Cloudslam.V1.CloudSLAMService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.App.Cloudslam.V1.CloudSLAMService.Service
end
