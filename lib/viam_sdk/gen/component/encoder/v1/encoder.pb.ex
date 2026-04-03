defmodule Viam.Component.Encoder.V1.PositionType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.component.encoder.v1.PositionType",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :POSITION_TYPE_UNSPECIFIED, 0
  field :POSITION_TYPE_TICKS_COUNT, 1
  field :POSITION_TYPE_ANGLE_DEGREES, 2
end

defmodule Viam.Component.Encoder.V1.GetPositionRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.encoder.v1.GetPositionRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string

  field :position_type, 2,
    proto3_optional: true,
    type: Viam.Component.Encoder.V1.PositionType,
    json_name: "positionType",
    enum: true

  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Encoder.V1.GetPositionResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.encoder.v1.GetPositionResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :value, 1, type: :float

  field :position_type, 2,
    type: Viam.Component.Encoder.V1.PositionType,
    json_name: "positionType",
    enum: true
end

defmodule Viam.Component.Encoder.V1.ResetPositionRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.encoder.v1.ResetPositionRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Encoder.V1.ResetPositionResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.encoder.v1.ResetPositionResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Encoder.V1.GetPropertiesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.encoder.v1.GetPropertiesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Encoder.V1.GetPropertiesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.encoder.v1.GetPropertiesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :ticks_count_supported, 1, type: :bool, json_name: "ticksCountSupported"
  field :angle_degrees_supported, 2, type: :bool, json_name: "angleDegreesSupported"
end

defmodule Viam.Component.Encoder.V1.EncoderService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.component.encoder.v1.EncoderService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :GetPosition,
      Viam.Component.Encoder.V1.GetPositionRequest,
      Viam.Component.Encoder.V1.GetPositionResponse

  rpc :ResetPosition,
      Viam.Component.Encoder.V1.ResetPositionRequest,
      Viam.Component.Encoder.V1.ResetPositionResponse

  rpc :GetProperties,
      Viam.Component.Encoder.V1.GetPropertiesRequest,
      Viam.Component.Encoder.V1.GetPropertiesResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse

  rpc :GetGeometries, Viam.Common.V1.GetGeometriesRequest, Viam.Common.V1.GetGeometriesResponse
end

defmodule Viam.Component.Encoder.V1.EncoderService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Component.Encoder.V1.EncoderService.Service
end
