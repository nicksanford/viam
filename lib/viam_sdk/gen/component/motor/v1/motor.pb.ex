defmodule Viam.Component.Motor.V1.SetPowerRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.motor.v1.SetPowerRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :power_pct, 2, type: :double, json_name: "powerPct"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Motor.V1.SetPowerResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.motor.v1.SetPowerResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Motor.V1.GoForRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.motor.v1.GoForRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :rpm, 2, type: :double
  field :revolutions, 3, type: :double
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Motor.V1.GoForResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.motor.v1.GoForResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Motor.V1.GoToRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.motor.v1.GoToRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :rpm, 2, type: :double
  field :position_revolutions, 3, type: :double, json_name: "positionRevolutions"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Motor.V1.GoToResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.motor.v1.GoToResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Motor.V1.SetRPMRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.motor.v1.SetRPMRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :rpm, 2, type: :double
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Motor.V1.SetRPMResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.motor.v1.SetRPMResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Motor.V1.ResetZeroPositionRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.motor.v1.ResetZeroPositionRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :offset, 2, type: :double
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Motor.V1.ResetZeroPositionResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.motor.v1.ResetZeroPositionResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Motor.V1.GetPositionRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.motor.v1.GetPositionRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Motor.V1.GetPositionResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.motor.v1.GetPositionResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :position, 1, type: :double
end

defmodule Viam.Component.Motor.V1.StopRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.motor.v1.StopRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Motor.V1.StopResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.motor.v1.StopResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Motor.V1.IsPoweredRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.motor.v1.IsPoweredRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Motor.V1.IsPoweredResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.motor.v1.IsPoweredResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :is_on, 1, type: :bool, json_name: "isOn"
  field :power_pct, 2, type: :double, json_name: "powerPct"
end

defmodule Viam.Component.Motor.V1.GetPropertiesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.motor.v1.GetPropertiesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Motor.V1.GetPropertiesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.motor.v1.GetPropertiesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :position_reporting, 1, type: :bool, json_name: "positionReporting"
end

defmodule Viam.Component.Motor.V1.Status do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.motor.v1.Status",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :is_powered, 1, type: :bool, json_name: "isPowered"
  field :position, 3, type: :double
  field :is_moving, 4, type: :bool, json_name: "isMoving"
end

defmodule Viam.Component.Motor.V1.IsMovingRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.motor.v1.IsMovingRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
end

defmodule Viam.Component.Motor.V1.IsMovingResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.motor.v1.IsMovingResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :is_moving, 1, type: :bool, json_name: "isMoving"
end

defmodule Viam.Component.Motor.V1.MotorService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.component.motor.v1.MotorService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :SetPower, Viam.Component.Motor.V1.SetPowerRequest, Viam.Component.Motor.V1.SetPowerResponse

  rpc :GoFor, Viam.Component.Motor.V1.GoForRequest, Viam.Component.Motor.V1.GoForResponse

  rpc :GoTo, Viam.Component.Motor.V1.GoToRequest, Viam.Component.Motor.V1.GoToResponse

  rpc :SetRPM, Viam.Component.Motor.V1.SetRPMRequest, Viam.Component.Motor.V1.SetRPMResponse

  rpc :ResetZeroPosition,
      Viam.Component.Motor.V1.ResetZeroPositionRequest,
      Viam.Component.Motor.V1.ResetZeroPositionResponse

  rpc :GetPosition,
      Viam.Component.Motor.V1.GetPositionRequest,
      Viam.Component.Motor.V1.GetPositionResponse

  rpc :GetProperties,
      Viam.Component.Motor.V1.GetPropertiesRequest,
      Viam.Component.Motor.V1.GetPropertiesResponse

  rpc :Stop, Viam.Component.Motor.V1.StopRequest, Viam.Component.Motor.V1.StopResponse

  rpc :IsPowered,
      Viam.Component.Motor.V1.IsPoweredRequest,
      Viam.Component.Motor.V1.IsPoweredResponse

  rpc :IsMoving, Viam.Component.Motor.V1.IsMovingRequest, Viam.Component.Motor.V1.IsMovingResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse

  rpc :GetGeometries, Viam.Common.V1.GetGeometriesRequest, Viam.Common.V1.GetGeometriesResponse
end

defmodule Viam.Component.Motor.V1.MotorService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Component.Motor.V1.MotorService.Service
end
