defmodule Viam.Component.Sensor.V1.SensorService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.component.sensor.v1.SensorService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :GetReadings, Viam.Common.V1.GetReadingsRequest, Viam.Common.V1.GetReadingsResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse

  rpc :GetGeometries, Viam.Common.V1.GetGeometriesRequest, Viam.Common.V1.GetGeometriesResponse
end

defmodule Viam.Component.Sensor.V1.SensorService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Component.Sensor.V1.SensorService.Service
end
