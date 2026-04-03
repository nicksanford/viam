defmodule Viam.Component.Powersensor.V1.GetVoltageRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.powersensor.v1.GetVoltageRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Powersensor.V1.GetVoltageResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.powersensor.v1.GetVoltageResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :volts, 1, type: :double
  field :is_ac, 2, type: :bool, json_name: "isAc"
end

defmodule Viam.Component.Powersensor.V1.GetCurrentRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.powersensor.v1.GetCurrentRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Powersensor.V1.GetCurrentResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.powersensor.v1.GetCurrentResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :amperes, 1, type: :double
  field :is_ac, 2, type: :bool, json_name: "isAc"
end

defmodule Viam.Component.Powersensor.V1.GetPowerRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.powersensor.v1.GetPowerRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Powersensor.V1.GetPowerResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.powersensor.v1.GetPowerResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :watts, 1, type: :double
end

defmodule Viam.Component.Powersensor.V1.PowerSensorService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.component.powersensor.v1.PowerSensorService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :GetVoltage,
      Viam.Component.Powersensor.V1.GetVoltageRequest,
      Viam.Component.Powersensor.V1.GetVoltageResponse

  rpc :GetCurrent,
      Viam.Component.Powersensor.V1.GetCurrentRequest,
      Viam.Component.Powersensor.V1.GetCurrentResponse

  rpc :GetPower,
      Viam.Component.Powersensor.V1.GetPowerRequest,
      Viam.Component.Powersensor.V1.GetPowerResponse

  rpc :GetReadings, Viam.Common.V1.GetReadingsRequest, Viam.Common.V1.GetReadingsResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse
end

defmodule Viam.Component.Powersensor.V1.PowerSensorService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Component.Powersensor.V1.PowerSensorService.Service
end
