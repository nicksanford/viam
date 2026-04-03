defmodule Viam.Provisioning.V1.ExitProvisioningRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.provisioning.v1.ExitProvisioningRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Provisioning.V1.ExitProvisioningResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.provisioning.v1.ExitProvisioningResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Provisioning.V1.GetSmartMachineStatusRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.provisioning.v1.GetSmartMachineStatusRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Provisioning.V1.GetSmartMachineStatusResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.provisioning.v1.GetSmartMachineStatusResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :provisioning_info, 1,
    type: Viam.Provisioning.V1.ProvisioningInfo,
    json_name: "provisioningInfo"

  field :has_smart_machine_credentials, 2, type: :bool, json_name: "hasSmartMachineCredentials"
  field :is_online, 3, type: :bool, json_name: "isOnline"

  field :latest_connection_attempt, 4,
    type: Viam.Provisioning.V1.NetworkInfo,
    json_name: "latestConnectionAttempt"

  field :errors, 5, repeated: true, type: :string
  field :agent_version, 6, type: :string, json_name: "agentVersion"
end

defmodule Viam.Provisioning.V1.SetNetworkCredentialsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.provisioning.v1.SetNetworkCredentialsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :type, 1, type: :string
  field :ssid, 2, type: :string
  field :psk, 3, type: :string
end

defmodule Viam.Provisioning.V1.SetNetworkCredentialsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.provisioning.v1.SetNetworkCredentialsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Provisioning.V1.SetSmartMachineCredentialsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.provisioning.v1.SetSmartMachineCredentialsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :cloud, 1, type: Viam.Provisioning.V1.CloudConfig
end

defmodule Viam.Provisioning.V1.SetSmartMachineCredentialsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.provisioning.v1.SetSmartMachineCredentialsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Provisioning.V1.GetNetworkListRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.provisioning.v1.GetNetworkListRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Provisioning.V1.GetNetworkListResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.provisioning.v1.GetNetworkListResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :networks, 1, repeated: true, type: Viam.Provisioning.V1.NetworkInfo
end

defmodule Viam.Provisioning.V1.ProvisioningInfo do
  @moduledoc false

  use Protobuf,
    full_name: "viam.provisioning.v1.ProvisioningInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :fragment_id, 1, type: :string, json_name: "fragmentId"
  field :model, 2, type: :string
  field :manufacturer, 3, type: :string
end

defmodule Viam.Provisioning.V1.NetworkInfo do
  @moduledoc false

  use Protobuf,
    full_name: "viam.provisioning.v1.NetworkInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :type, 1, type: :string
  field :ssid, 2, type: :string
  field :security, 3, type: :string
  field :signal, 4, type: :int32
  field :connected, 5, type: :bool
  field :last_error, 6, type: :string, json_name: "lastError"
end

defmodule Viam.Provisioning.V1.CloudConfig do
  @moduledoc false

  use Protobuf,
    full_name: "viam.provisioning.v1.CloudConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :secret, 2, type: :string
  field :app_address, 3, type: :string, json_name: "appAddress"
  field :api_key, 4, type: Viam.Provisioning.V1.APIKey, json_name: "apiKey"
end

defmodule Viam.Provisioning.V1.APIKey do
  @moduledoc false

  use Protobuf,
    full_name: "viam.provisioning.v1.APIKey",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :key, 2, type: :string
end

defmodule Viam.Provisioning.V1.ProvisioningService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.provisioning.v1.ProvisioningService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :GetSmartMachineStatus,
      Viam.Provisioning.V1.GetSmartMachineStatusRequest,
      Viam.Provisioning.V1.GetSmartMachineStatusResponse

  rpc :SetNetworkCredentials,
      Viam.Provisioning.V1.SetNetworkCredentialsRequest,
      Viam.Provisioning.V1.SetNetworkCredentialsResponse

  rpc :SetSmartMachineCredentials,
      Viam.Provisioning.V1.SetSmartMachineCredentialsRequest,
      Viam.Provisioning.V1.SetSmartMachineCredentialsResponse

  rpc :GetNetworkList,
      Viam.Provisioning.V1.GetNetworkListRequest,
      Viam.Provisioning.V1.GetNetworkListResponse

  rpc :ExitProvisioning,
      Viam.Provisioning.V1.ExitProvisioningRequest,
      Viam.Provisioning.V1.ExitProvisioningResponse
end

defmodule Viam.Provisioning.V1.ProvisioningService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Provisioning.V1.ProvisioningService.Service
end
