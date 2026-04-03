defmodule Viam.Service.Sensors.V1.GetSensorsRequest do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.service.sensors.v1.GetSensorsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string, deprecated: true
  field :extra, 99, type: Google.Protobuf.Struct, deprecated: true
end

defmodule Viam.Service.Sensors.V1.GetSensorsResponse do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.service.sensors.v1.GetSensorsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :sensor_names, 1,
    repeated: true,
    type: Viam.Common.V1.ResourceName,
    json_name: "sensorNames",
    deprecated: true
end

defmodule Viam.Service.Sensors.V1.GetReadingsRequest do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.service.sensors.v1.GetReadingsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string, deprecated: true

  field :sensor_names, 2,
    repeated: true,
    type: Viam.Common.V1.ResourceName,
    json_name: "sensorNames",
    deprecated: true

  field :extra, 99, type: Google.Protobuf.Struct, deprecated: true
end

defmodule Viam.Service.Sensors.V1.Readings.ReadingsEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.sensors.v1.Readings.ReadingsEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Value
end

defmodule Viam.Service.Sensors.V1.Readings do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.service.sensors.v1.Readings",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: Viam.Common.V1.ResourceName, deprecated: true

  field :readings, 2,
    repeated: true,
    type: Viam.Service.Sensors.V1.Readings.ReadingsEntry,
    map: true,
    deprecated: true
end

defmodule Viam.Service.Sensors.V1.GetReadingsResponse do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.service.sensors.v1.GetReadingsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :readings, 1, repeated: true, type: Viam.Service.Sensors.V1.Readings, deprecated: true
end

defmodule Viam.Service.Sensors.V1.SensorsService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.service.sensors.v1.SensorsService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :GetSensors,
      Viam.Service.Sensors.V1.GetSensorsRequest,
      Viam.Service.Sensors.V1.GetSensorsResponse

  rpc :GetReadings,
      Viam.Service.Sensors.V1.GetReadingsRequest,
      Viam.Service.Sensors.V1.GetReadingsResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse
end

defmodule Viam.Service.Sensors.V1.SensorsService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Service.Sensors.V1.SensorsService.Service
end
