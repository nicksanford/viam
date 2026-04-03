defmodule Viam.Component.Movementsensor.V1.GetLinearVelocityRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.movementsensor.v1.GetLinearVelocityRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Movementsensor.V1.GetLinearVelocityResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.movementsensor.v1.GetLinearVelocityResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :linear_velocity, 1, type: Viam.Common.V1.Vector3, json_name: "linearVelocity"
end

defmodule Viam.Component.Movementsensor.V1.GetAngularVelocityRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.movementsensor.v1.GetAngularVelocityRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Movementsensor.V1.GetAngularVelocityResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.movementsensor.v1.GetAngularVelocityResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :angular_velocity, 1, type: Viam.Common.V1.Vector3, json_name: "angularVelocity"
end

defmodule Viam.Component.Movementsensor.V1.GetCompassHeadingRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.movementsensor.v1.GetCompassHeadingRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Movementsensor.V1.GetCompassHeadingResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.movementsensor.v1.GetCompassHeadingResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :value, 1, type: :double
end

defmodule Viam.Component.Movementsensor.V1.GetOrientationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.movementsensor.v1.GetOrientationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Movementsensor.V1.GetOrientationResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.movementsensor.v1.GetOrientationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :orientation, 1, type: Viam.Common.V1.Orientation
end

defmodule Viam.Component.Movementsensor.V1.GetPositionRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.movementsensor.v1.GetPositionRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Movementsensor.V1.GetPositionResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.movementsensor.v1.GetPositionResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :coordinate, 1, type: Viam.Common.V1.GeoPoint
  field :altitude_m, 2, type: :float, json_name: "altitudeM"
end

defmodule Viam.Component.Movementsensor.V1.GetPropertiesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.movementsensor.v1.GetPropertiesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Movementsensor.V1.GetPropertiesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.movementsensor.v1.GetPropertiesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :linear_velocity_supported, 1, type: :bool, json_name: "linearVelocitySupported"
  field :angular_velocity_supported, 2, type: :bool, json_name: "angularVelocitySupported"
  field :orientation_supported, 3, type: :bool, json_name: "orientationSupported"
  field :position_supported, 4, type: :bool, json_name: "positionSupported"
  field :compass_heading_supported, 5, type: :bool, json_name: "compassHeadingSupported"
  field :linear_acceleration_supported, 6, type: :bool, json_name: "linearAccelerationSupported"
end

defmodule Viam.Component.Movementsensor.V1.GetAccuracyRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.movementsensor.v1.GetAccuracyRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Movementsensor.V1.GetAccuracyResponse.AccuracyEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.movementsensor.v1.GetAccuracyResponse.AccuracyEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :float
end

defmodule Viam.Component.Movementsensor.V1.GetAccuracyResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.movementsensor.v1.GetAccuracyResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :accuracy, 1,
    repeated: true,
    type: Viam.Component.Movementsensor.V1.GetAccuracyResponse.AccuracyEntry,
    map: true

  field :position_hdop, 2, proto3_optional: true, type: :float, json_name: "positionHdop"
  field :position_vdop, 3, proto3_optional: true, type: :float, json_name: "positionVdop"

  field :position_nmea_gga_fix, 4,
    proto3_optional: true,
    type: :int32,
    json_name: "positionNmeaGgaFix"

  field :compass_degrees_error, 5,
    proto3_optional: true,
    type: :float,
    json_name: "compassDegreesError"
end

defmodule Viam.Component.Movementsensor.V1.GetLinearAccelerationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.movementsensor.v1.GetLinearAccelerationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Movementsensor.V1.GetLinearAccelerationResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.movementsensor.v1.GetLinearAccelerationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :linear_acceleration, 1, type: Viam.Common.V1.Vector3, json_name: "linearAcceleration"
end

defmodule Viam.Component.Movementsensor.V1.MovementSensorService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.component.movementsensor.v1.MovementSensorService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :GetLinearVelocity,
      Viam.Component.Movementsensor.V1.GetLinearVelocityRequest,
      Viam.Component.Movementsensor.V1.GetLinearVelocityResponse

  rpc :GetAngularVelocity,
      Viam.Component.Movementsensor.V1.GetAngularVelocityRequest,
      Viam.Component.Movementsensor.V1.GetAngularVelocityResponse

  rpc :GetCompassHeading,
      Viam.Component.Movementsensor.V1.GetCompassHeadingRequest,
      Viam.Component.Movementsensor.V1.GetCompassHeadingResponse

  rpc :GetOrientation,
      Viam.Component.Movementsensor.V1.GetOrientationRequest,
      Viam.Component.Movementsensor.V1.GetOrientationResponse

  rpc :GetPosition,
      Viam.Component.Movementsensor.V1.GetPositionRequest,
      Viam.Component.Movementsensor.V1.GetPositionResponse

  rpc :GetProperties,
      Viam.Component.Movementsensor.V1.GetPropertiesRequest,
      Viam.Component.Movementsensor.V1.GetPropertiesResponse

  rpc :GetAccuracy,
      Viam.Component.Movementsensor.V1.GetAccuracyRequest,
      Viam.Component.Movementsensor.V1.GetAccuracyResponse

  rpc :GetLinearAcceleration,
      Viam.Component.Movementsensor.V1.GetLinearAccelerationRequest,
      Viam.Component.Movementsensor.V1.GetLinearAccelerationResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse

  rpc :GetGeometries, Viam.Common.V1.GetGeometriesRequest, Viam.Common.V1.GetGeometriesResponse

  rpc :GetReadings, Viam.Common.V1.GetReadingsRequest, Viam.Common.V1.GetReadingsResponse
end

defmodule Viam.Component.Movementsensor.V1.MovementSensorService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Component.Movementsensor.V1.MovementSensorService.Service
end
