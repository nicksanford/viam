defmodule Viam.App.Agent.V1.PackageFormat do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.agent.v1.PackageFormat",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :PACKAGE_FORMAT_UNSPECIFIED, 0
  field :PACKAGE_FORMAT_RAW, 1
  field :PACKAGE_FORMAT_XZ, 2
  field :PACKAGE_FORMAT_EXECUTABLE, 3
  field :PACKAGE_FORMAT_XZ_EXECUTABLE, 4
end

defmodule Viam.App.Agent.V1.DeviceAgentConfigRequest.SubsystemVersionsEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.agent.v1.DeviceAgentConfigRequest.SubsystemVersionsEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Viam.App.Agent.V1.DeviceAgentConfigRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.agent.v1.DeviceAgentConfigRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :host_info, 2, type: Viam.App.Agent.V1.HostInfo, json_name: "hostInfo"

  field :subsystem_versions, 3,
    repeated: true,
    type: Viam.App.Agent.V1.DeviceAgentConfigRequest.SubsystemVersionsEntry,
    json_name: "subsystemVersions",
    map: true,
    deprecated: true

  field :version_info, 4, type: Viam.App.Agent.V1.VersionInfo, json_name: "versionInfo"
  field :agent_uptime, 5, type: Google.Protobuf.Duration, json_name: "agentUptime"
  field :viam_server_uptime, 6, type: Google.Protobuf.Duration, json_name: "viamServerUptime"
end

defmodule Viam.App.Agent.V1.DeviceAgentConfigResponse.SubsystemConfigsEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.agent.v1.DeviceAgentConfigResponse.SubsystemConfigsEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Viam.App.Agent.V1.DeviceSubsystemConfig
end

defmodule Viam.App.Agent.V1.DeviceAgentConfigResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.agent.v1.DeviceAgentConfigResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :subsystem_configs, 1,
    repeated: true,
    type: Viam.App.Agent.V1.DeviceAgentConfigResponse.SubsystemConfigsEntry,
    json_name: "subsystemConfigs",
    map: true,
    deprecated: true

  field :check_interval, 2, type: Google.Protobuf.Duration, json_name: "checkInterval"
  field :agent_update_info, 3, type: Viam.App.Agent.V1.UpdateInfo, json_name: "agentUpdateInfo"

  field :viam_server_update_info, 4,
    type: Viam.App.Agent.V1.UpdateInfo,
    json_name: "viamServerUpdateInfo"

  field :advanced_settings, 5, type: Google.Protobuf.Struct, json_name: "advancedSettings"
  field :network_configuration, 6, type: Google.Protobuf.Struct, json_name: "networkConfiguration"
  field :additional_networks, 7, type: Google.Protobuf.Struct, json_name: "additionalNetworks"
  field :system_configuration, 8, type: Google.Protobuf.Struct, json_name: "systemConfiguration"
end

defmodule Viam.App.Agent.V1.DeviceSubsystemConfig do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.app.agent.v1.DeviceSubsystemConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :update_info, 1, type: Viam.App.Agent.V1.UpdateInfo, json_name: "updateInfo"
  field :disable, 2, type: :bool
  field :force_restart, 3, type: :bool, json_name: "forceRestart"
  field :attributes, 4, type: Google.Protobuf.Struct
end

defmodule Viam.App.Agent.V1.VersionInfo do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.agent.v1.VersionInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :agent_running, 1, type: :string, json_name: "agentRunning"
  field :agent_installed, 2, type: :string, json_name: "agentInstalled"
  field :viam_server_running, 3, type: :string, json_name: "viamServerRunning"
  field :viam_server_installed, 4, type: :string, json_name: "viamServerInstalled"
end

defmodule Viam.App.Agent.V1.HostInfo do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.agent.v1.HostInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :platform, 1, type: :string
  field :distro, 2, type: :string
  field :tags, 3, repeated: true, type: :string
end

defmodule Viam.App.Agent.V1.UpdateInfo do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.agent.v1.UpdateInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :filename, 1, type: :string
  field :url, 2, type: :string
  field :version, 3, type: :string
  field :sha256, 4, type: :bytes
  field :format, 5, type: Viam.App.Agent.V1.PackageFormat, enum: true
end

defmodule Viam.App.Agent.V1.AgentDeviceService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.app.agent.v1.AgentDeviceService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :DeviceAgentConfig,
      Viam.App.Agent.V1.DeviceAgentConfigRequest,
      Viam.App.Agent.V1.DeviceAgentConfigResponse
end

defmodule Viam.App.Agent.V1.AgentDeviceService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.App.Agent.V1.AgentDeviceService.Service
end
