defmodule Viam.Component.Generic.V1.GenericService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.component.generic.v1.GenericService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse

  rpc :GetGeometries, Viam.Common.V1.GetGeometriesRequest, Viam.Common.V1.GetGeometriesResponse
end

defmodule Viam.Component.Generic.V1.GenericService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Component.Generic.V1.GenericService.Service
end
