defmodule Viam.Service.Discovery.V1.DiscoverResourcesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.discovery.v1.DiscoverResourcesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Discovery.V1.DiscoverResourcesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.discovery.v1.DiscoverResourcesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :discoveries, 1, repeated: true, type: Viam.App.V1.ComponentConfig
end

defmodule Viam.Service.Discovery.V1.DiscoveryService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.service.discovery.v1.DiscoveryService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :DiscoverResources,
      Viam.Service.Discovery.V1.DiscoverResourcesRequest,
      Viam.Service.Discovery.V1.DiscoverResourcesResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse
end

defmodule Viam.Service.Discovery.V1.DiscoveryService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Service.Discovery.V1.DiscoveryService.Service
end
