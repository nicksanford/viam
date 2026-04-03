defmodule Viam.Robot.V1.PeerConnectionType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.robot.v1.PeerConnectionType",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :PEER_CONNECTION_TYPE_UNSPECIFIED, 0
  field :PEER_CONNECTION_TYPE_GRPC, 1
  field :PEER_CONNECTION_TYPE_WEBRTC, 2
end

defmodule Viam.Robot.V1.GetMachineStatusResponse.State do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.robot.v1.GetMachineStatusResponse.State",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STATE_INITIALIZING, 1
  field :STATE_RUNNING, 2
end

defmodule Viam.Robot.V1.ResourceStatus.State do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.robot.v1.ResourceStatus.State",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STATE_UNCONFIGURED, 1
  field :STATE_CONFIGURING, 2
  field :STATE_READY, 3
  field :STATE_REMOVING, 4
  field :STATE_UNHEALTHY, 5
end

defmodule Viam.Robot.V1.SendTracesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.SendTracesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :resource_spans, 1,
    repeated: true,
    type: Opentelemetry.Proto.Trace.V1.ResourceSpans,
    json_name: "resourceSpans"
end

defmodule Viam.Robot.V1.SendTracesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.SendTracesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Robot.V1.TunnelRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.TunnelRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :destination_port, 1, type: :uint32, json_name: "destinationPort"
  field :data, 2, type: :bytes
end

defmodule Viam.Robot.V1.TunnelResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.TunnelResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :data, 1, type: :bytes
end

defmodule Viam.Robot.V1.ListTunnelsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.ListTunnelsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Robot.V1.ListTunnelsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.ListTunnelsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :tunnels, 1, repeated: true, type: Viam.Robot.V1.Tunnel
end

defmodule Viam.Robot.V1.Tunnel do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.Tunnel",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :port, 1, type: :uint32
  field :connection_timeout, 2, type: Google.Protobuf.Duration, json_name: "connectionTimeout"
end

defmodule Viam.Robot.V1.FrameSystemConfig do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.FrameSystemConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :frame, 1, type: Viam.Common.V1.Transform
  field :kinematics, 2, type: Google.Protobuf.Struct
end

defmodule Viam.Robot.V1.FrameSystemConfigRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.FrameSystemConfigRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :supplemental_transforms, 1,
    repeated: true,
    type: Viam.Common.V1.Transform,
    json_name: "supplementalTransforms"
end

defmodule Viam.Robot.V1.FrameSystemConfigResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.FrameSystemConfigResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :frame_system_configs, 1,
    repeated: true,
    type: Viam.Robot.V1.FrameSystemConfig,
    json_name: "frameSystemConfigs"
end

defmodule Viam.Robot.V1.TransformPoseRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.TransformPoseRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :source, 1, type: Viam.Common.V1.PoseInFrame
  field :destination, 2, type: :string

  field :supplemental_transforms, 3,
    repeated: true,
    type: Viam.Common.V1.Transform,
    json_name: "supplementalTransforms"
end

defmodule Viam.Robot.V1.TransformPoseResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.TransformPoseResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :pose, 1, type: Viam.Common.V1.PoseInFrame
end

defmodule Viam.Robot.V1.TransformPCDRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.TransformPCDRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :point_cloud_pcd, 1, type: :bytes, json_name: "pointCloudPcd"
  field :source, 2, type: :string
  field :destination, 3, type: :string
end

defmodule Viam.Robot.V1.TransformPCDResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.TransformPCDResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :point_cloud_pcd, 1, type: :bytes, json_name: "pointCloudPcd"
end

defmodule Viam.Robot.V1.ResourceNamesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.ResourceNamesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Robot.V1.ResourceNamesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.ResourceNamesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :resources, 1, repeated: true, type: Viam.Common.V1.ResourceName
end

defmodule Viam.Robot.V1.ResourceRPCSubtype do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.ResourceRPCSubtype",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :subtype, 1, type: Viam.Common.V1.ResourceName
  field :proto_service, 2, type: :string, json_name: "protoService"
end

defmodule Viam.Robot.V1.ResourceRPCSubtypesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.ResourceRPCSubtypesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Robot.V1.ResourceRPCSubtypesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.ResourceRPCSubtypesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :resource_rpc_subtypes, 1,
    repeated: true,
    type: Viam.Robot.V1.ResourceRPCSubtype,
    json_name: "resourceRpcSubtypes"
end

defmodule Viam.Robot.V1.Operation do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.Operation",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :method, 2, type: :string
  field :arguments, 3, type: Google.Protobuf.Struct
  field :started, 4, type: Google.Protobuf.Timestamp
  field :session_id, 5, proto3_optional: true, type: :string, json_name: "sessionId"
end

defmodule Viam.Robot.V1.GetOperationsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.GetOperationsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Robot.V1.GetOperationsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.GetOperationsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :operations, 1, repeated: true, type: Viam.Robot.V1.Operation
end

defmodule Viam.Robot.V1.CancelOperationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.CancelOperationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.Robot.V1.CancelOperationResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.CancelOperationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Robot.V1.BlockForOperationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.BlockForOperationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.Robot.V1.BlockForOperationResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.BlockForOperationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Robot.V1.PeerConnectionInfo do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.PeerConnectionInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :type, 1, type: Viam.Robot.V1.PeerConnectionType, enum: true
  field :remote_address, 2, proto3_optional: true, type: :string, json_name: "remoteAddress"
  field :local_address, 3, proto3_optional: true, type: :string, json_name: "localAddress"
end

defmodule Viam.Robot.V1.Session do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.Session",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string

  field :peer_connection_info, 2,
    proto3_optional: true,
    type: Viam.Robot.V1.PeerConnectionInfo,
    json_name: "peerConnectionInfo"
end

defmodule Viam.Robot.V1.GetSessionsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.GetSessionsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Robot.V1.GetSessionsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.GetSessionsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :sessions, 1, repeated: true, type: Viam.Robot.V1.Session
end

defmodule Viam.Robot.V1.ModuleModel do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.ModuleModel",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :module_name, 1, type: :string, json_name: "moduleName"
  field :model, 2, type: :string
  field :api, 3, type: :string
  field :from_local_module, 4, type: :bool, json_name: "fromLocalModule"
end

defmodule Viam.Robot.V1.GetModelsFromModulesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.GetModelsFromModulesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Robot.V1.GetModelsFromModulesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.GetModelsFromModulesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :models, 1, repeated: true, type: Viam.Robot.V1.ModuleModel
end

defmodule Viam.Robot.V1.Status do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.Status",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: Viam.Common.V1.ResourceName
  field :status, 2, type: Google.Protobuf.Struct
  field :last_reconfigured, 3, type: Google.Protobuf.Timestamp, json_name: "lastReconfigured"
end

defmodule Viam.Robot.V1.GetStatusRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.GetStatusRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :resource_names, 1,
    repeated: true,
    type: Viam.Common.V1.ResourceName,
    json_name: "resourceNames"
end

defmodule Viam.Robot.V1.GetStatusResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.GetStatusResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :status, 1, repeated: true, type: Viam.Robot.V1.Status
end

defmodule Viam.Robot.V1.StreamStatusRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.StreamStatusRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :resource_names, 1,
    repeated: true,
    type: Viam.Common.V1.ResourceName,
    json_name: "resourceNames"

  field :every, 2, type: Google.Protobuf.Duration
end

defmodule Viam.Robot.V1.StreamStatusResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.StreamStatusResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :status, 1, repeated: true, type: Viam.Robot.V1.Status
end

defmodule Viam.Robot.V1.StopExtraParameters do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.StopExtraParameters",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: Viam.Common.V1.ResourceName
  field :params, 2, type: Google.Protobuf.Struct
end

defmodule Viam.Robot.V1.StopAllRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.StopAllRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :extra, 99, repeated: true, type: Viam.Robot.V1.StopExtraParameters
end

defmodule Viam.Robot.V1.StopAllResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.StopAllResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Robot.V1.StartSessionRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.StartSessionRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :resume, 1, type: :string
end

defmodule Viam.Robot.V1.StartSessionResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.StartSessionResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :heartbeat_window, 2, type: Google.Protobuf.Duration, json_name: "heartbeatWindow"
end

defmodule Viam.Robot.V1.SendSessionHeartbeatRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.SendSessionHeartbeatRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.Robot.V1.SendSessionHeartbeatResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.SendSessionHeartbeatResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Robot.V1.LogRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.LogRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :logs, 1, repeated: true, type: Viam.Common.V1.LogEntry
end

defmodule Viam.Robot.V1.LogResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.LogResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Robot.V1.GetCloudMetadataRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.GetCloudMetadataRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Robot.V1.GetCloudMetadataResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.GetCloudMetadataResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :primary_org_id, 2, type: :string, json_name: "primaryOrgId"
  field :location_id, 3, type: :string, json_name: "locationId"
  field :machine_id, 4, type: :string, json_name: "machineId"
  field :machine_part_id, 5, type: :string, json_name: "machinePartId"
end

defmodule Viam.Robot.V1.RestartModuleRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.RestartModuleRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :id_or_name, 0

  field :module_id, 1, type: :string, json_name: "moduleId", oneof: 0
  field :module_name, 2, type: :string, json_name: "moduleName", oneof: 0
end

defmodule Viam.Robot.V1.RestartModuleResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.RestartModuleResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Robot.V1.ShutdownRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.ShutdownRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Robot.V1.ShutdownResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.ShutdownResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Robot.V1.GetMachineStatusRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.GetMachineStatusRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Robot.V1.GetMachineStatusResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.GetMachineStatusResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :resources, 1, repeated: true, type: Viam.Robot.V1.ResourceStatus
  field :config, 2, type: Viam.Robot.V1.ConfigStatus
  field :state, 3, type: Viam.Robot.V1.GetMachineStatusResponse.State, enum: true
  field :job_statuses, 4, repeated: true, type: Viam.Robot.V1.JobStatus, json_name: "jobStatuses"
end

defmodule Viam.Robot.V1.JobStatus do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.JobStatus",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :job_name, 1, type: :string, json_name: "jobName"

  field :recent_successful_runs, 2,
    repeated: true,
    type: Google.Protobuf.Timestamp,
    json_name: "recentSuccessfulRuns"

  field :recent_failed_runs, 3,
    repeated: true,
    type: Google.Protobuf.Timestamp,
    json_name: "recentFailedRuns"
end

defmodule Viam.Robot.V1.ResourceStatus do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.ResourceStatus",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: Viam.Common.V1.ResourceName
  field :state, 2, type: Viam.Robot.V1.ResourceStatus.State, enum: true
  field :last_updated, 3, type: Google.Protobuf.Timestamp, json_name: "lastUpdated"
  field :revision, 4, type: :string
  field :error, 5, type: :string

  field :cloud_metadata, 6,
    proto3_optional: true,
    type: Viam.Robot.V1.GetCloudMetadataResponse,
    json_name: "cloudMetadata"
end

defmodule Viam.Robot.V1.ConfigStatus do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.ConfigStatus",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :revision, 1, type: :string
  field :last_updated, 2, type: Google.Protobuf.Timestamp, json_name: "lastUpdated"
end

defmodule Viam.Robot.V1.GetVersionRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.GetVersionRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Robot.V1.GetVersionResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.GetVersionResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :platform, 1, type: :string
  field :version, 2, type: :string
  field :api_version, 3, type: :string, json_name: "apiVersion"
end

defmodule Viam.Robot.V1.GetPoseRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.GetPoseRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :component_name, 1, type: :string, json_name: "componentName"
  field :destination_frame, 2, type: :string, json_name: "destinationFrame"

  field :supplemental_transforms, 3,
    repeated: true,
    type: Viam.Common.V1.Transform,
    json_name: "supplementalTransforms"

  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Robot.V1.GetPoseResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.robot.v1.GetPoseResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :pose, 1, type: Viam.Common.V1.PoseInFrame
end

defmodule Viam.Robot.V1.RobotService.Service do
  @moduledoc false

  use GRPC.Service, name: "viam.robot.v1.RobotService", protoc_gen_elixir_version: "0.16.0"

  rpc :GetOperations, Viam.Robot.V1.GetOperationsRequest, Viam.Robot.V1.GetOperationsResponse

  rpc :GetSessions, Viam.Robot.V1.GetSessionsRequest, Viam.Robot.V1.GetSessionsResponse

  rpc :ResourceNames, Viam.Robot.V1.ResourceNamesRequest, Viam.Robot.V1.ResourceNamesResponse

  rpc :ResourceRPCSubtypes,
      Viam.Robot.V1.ResourceRPCSubtypesRequest,
      Viam.Robot.V1.ResourceRPCSubtypesResponse

  rpc :CancelOperation,
      Viam.Robot.V1.CancelOperationRequest,
      Viam.Robot.V1.CancelOperationResponse

  rpc :BlockForOperation,
      Viam.Robot.V1.BlockForOperationRequest,
      Viam.Robot.V1.BlockForOperationResponse

  rpc :GetModelsFromModules,
      Viam.Robot.V1.GetModelsFromModulesRequest,
      Viam.Robot.V1.GetModelsFromModulesResponse

  rpc :GetStatus, Viam.Robot.V1.GetStatusRequest, Viam.Robot.V1.GetStatusResponse

  rpc :StreamStatus, Viam.Robot.V1.StreamStatusRequest, stream(Viam.Robot.V1.StreamStatusResponse)

  rpc :StopAll, Viam.Robot.V1.StopAllRequest, Viam.Robot.V1.StopAllResponse

  rpc :StartSession, Viam.Robot.V1.StartSessionRequest, Viam.Robot.V1.StartSessionResponse

  rpc :SendSessionHeartbeat,
      Viam.Robot.V1.SendSessionHeartbeatRequest,
      Viam.Robot.V1.SendSessionHeartbeatResponse

  rpc :Log, Viam.Robot.V1.LogRequest, Viam.Robot.V1.LogResponse

  rpc :GetCloudMetadata,
      Viam.Robot.V1.GetCloudMetadataRequest,
      Viam.Robot.V1.GetCloudMetadataResponse

  rpc :RestartModule, Viam.Robot.V1.RestartModuleRequest, Viam.Robot.V1.RestartModuleResponse

  rpc :Shutdown, Viam.Robot.V1.ShutdownRequest, Viam.Robot.V1.ShutdownResponse

  rpc :GetMachineStatus,
      Viam.Robot.V1.GetMachineStatusRequest,
      Viam.Robot.V1.GetMachineStatusResponse

  rpc :GetVersion, Viam.Robot.V1.GetVersionRequest, Viam.Robot.V1.GetVersionResponse

  rpc :Tunnel, stream(Viam.Robot.V1.TunnelRequest), stream(Viam.Robot.V1.TunnelResponse)

  rpc :ListTunnels, Viam.Robot.V1.ListTunnelsRequest, Viam.Robot.V1.ListTunnelsResponse

  rpc :FrameSystemConfig,
      Viam.Robot.V1.FrameSystemConfigRequest,
      Viam.Robot.V1.FrameSystemConfigResponse

  rpc :GetPose, Viam.Robot.V1.GetPoseRequest, Viam.Robot.V1.GetPoseResponse

  rpc :TransformPose, Viam.Robot.V1.TransformPoseRequest, Viam.Robot.V1.TransformPoseResponse

  rpc :TransformPCD, Viam.Robot.V1.TransformPCDRequest, Viam.Robot.V1.TransformPCDResponse

  rpc :SendTraces, Viam.Robot.V1.SendTracesRequest, Viam.Robot.V1.SendTracesResponse
end

defmodule Viam.Robot.V1.RobotService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Robot.V1.RobotService.Service
end
