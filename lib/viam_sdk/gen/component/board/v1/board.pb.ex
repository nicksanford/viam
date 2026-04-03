defmodule Viam.Component.Board.V1.PowerMode do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.component.board.v1.PowerMode",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :POWER_MODE_UNSPECIFIED, 0
  field :POWER_MODE_NORMAL, 1
  field :POWER_MODE_OFFLINE_DEEP, 2
end

defmodule Viam.Component.Board.V1.Status.AnalogsEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.board.v1.Status.AnalogsEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int32
end

defmodule Viam.Component.Board.V1.Status.DigitalInterruptsEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.board.v1.Status.DigitalInterruptsEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :int64
end

defmodule Viam.Component.Board.V1.Status do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.board.v1.Status",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :analogs, 1, repeated: true, type: Viam.Component.Board.V1.Status.AnalogsEntry, map: true

  field :digital_interrupts, 2,
    repeated: true,
    type: Viam.Component.Board.V1.Status.DigitalInterruptsEntry,
    json_name: "digitalInterrupts",
    map: true
end

defmodule Viam.Component.Board.V1.SetGPIORequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.board.v1.SetGPIORequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :pin, 2, type: :string
  field :high, 3, type: :bool
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Board.V1.SetGPIOResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.board.v1.SetGPIOResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Board.V1.GetGPIORequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.board.v1.GetGPIORequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :pin, 2, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Board.V1.GetGPIOResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.board.v1.GetGPIOResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :high, 1, type: :bool
end

defmodule Viam.Component.Board.V1.PWMRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.board.v1.PWMRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :pin, 2, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Board.V1.PWMResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.board.v1.PWMResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :duty_cycle_pct, 1, type: :double, json_name: "dutyCyclePct"
end

defmodule Viam.Component.Board.V1.SetPWMRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.board.v1.SetPWMRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :pin, 2, type: :string
  field :duty_cycle_pct, 3, type: :double, json_name: "dutyCyclePct"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Board.V1.SetPWMResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.board.v1.SetPWMResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Board.V1.PWMFrequencyRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.board.v1.PWMFrequencyRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :pin, 2, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Board.V1.PWMFrequencyResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.board.v1.PWMFrequencyResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :frequency_hz, 1, type: :uint64, json_name: "frequencyHz"
end

defmodule Viam.Component.Board.V1.SetPWMFrequencyRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.board.v1.SetPWMFrequencyRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :pin, 2, type: :string
  field :frequency_hz, 3, type: :uint64, json_name: "frequencyHz"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Board.V1.SetPWMFrequencyResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.board.v1.SetPWMFrequencyResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Board.V1.ReadAnalogReaderRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.board.v1.ReadAnalogReaderRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :board_name, 1, type: :string, json_name: "boardName"
  field :analog_reader_name, 2, type: :string, json_name: "analogReaderName"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Board.V1.ReadAnalogReaderResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.board.v1.ReadAnalogReaderResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :value, 1, type: :int32
  field :min_range, 2, type: :float, json_name: "minRange"
  field :max_range, 3, type: :float, json_name: "maxRange"
  field :step_size, 4, type: :float, json_name: "stepSize"
end

defmodule Viam.Component.Board.V1.WriteAnalogRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.board.v1.WriteAnalogRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :pin, 2, type: :string
  field :value, 3, type: :int32
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Board.V1.WriteAnalogResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.board.v1.WriteAnalogResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Board.V1.GetDigitalInterruptValueRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.board.v1.GetDigitalInterruptValueRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :board_name, 1, type: :string, json_name: "boardName"
  field :digital_interrupt_name, 2, type: :string, json_name: "digitalInterruptName"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Board.V1.GetDigitalInterruptValueResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.board.v1.GetDigitalInterruptValueResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :value, 1, type: :int64
end

defmodule Viam.Component.Board.V1.StreamTicksRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.board.v1.StreamTicksRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :pin_names, 2, repeated: true, type: :string, json_name: "pinNames"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Board.V1.StreamTicksResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.board.v1.StreamTicksResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :pin_name, 1, type: :string, json_name: "pinName"
  field :time, 2, type: :uint64
  field :high, 3, type: :bool
end

defmodule Viam.Component.Board.V1.SetPowerModeRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.board.v1.SetPowerModeRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string

  field :power_mode, 2,
    type: Viam.Component.Board.V1.PowerMode,
    json_name: "powerMode",
    enum: true

  field :duration, 3, proto3_optional: true, type: Google.Protobuf.Duration
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Board.V1.SetPowerModeResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.board.v1.SetPowerModeResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Board.V1.BoardService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.component.board.v1.BoardService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :SetGPIO, Viam.Component.Board.V1.SetGPIORequest, Viam.Component.Board.V1.SetGPIOResponse

  rpc :GetGPIO, Viam.Component.Board.V1.GetGPIORequest, Viam.Component.Board.V1.GetGPIOResponse

  rpc :PWM, Viam.Component.Board.V1.PWMRequest, Viam.Component.Board.V1.PWMResponse

  rpc :SetPWM, Viam.Component.Board.V1.SetPWMRequest, Viam.Component.Board.V1.SetPWMResponse

  rpc :PWMFrequency,
      Viam.Component.Board.V1.PWMFrequencyRequest,
      Viam.Component.Board.V1.PWMFrequencyResponse

  rpc :SetPWMFrequency,
      Viam.Component.Board.V1.SetPWMFrequencyRequest,
      Viam.Component.Board.V1.SetPWMFrequencyResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse

  rpc :ReadAnalogReader,
      Viam.Component.Board.V1.ReadAnalogReaderRequest,
      Viam.Component.Board.V1.ReadAnalogReaderResponse

  rpc :WriteAnalog,
      Viam.Component.Board.V1.WriteAnalogRequest,
      Viam.Component.Board.V1.WriteAnalogResponse

  rpc :GetDigitalInterruptValue,
      Viam.Component.Board.V1.GetDigitalInterruptValueRequest,
      Viam.Component.Board.V1.GetDigitalInterruptValueResponse

  rpc :StreamTicks,
      Viam.Component.Board.V1.StreamTicksRequest,
      stream(Viam.Component.Board.V1.StreamTicksResponse)

  rpc :SetPowerMode,
      Viam.Component.Board.V1.SetPowerModeRequest,
      Viam.Component.Board.V1.SetPowerModeResponse

  rpc :GetGeometries, Viam.Common.V1.GetGeometriesRequest, Viam.Common.V1.GetGeometriesResponse
end

defmodule Viam.Component.Board.V1.BoardService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Component.Board.V1.BoardService.Service
end
