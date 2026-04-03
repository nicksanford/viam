defmodule Viam.Component.Base.V1.MoveStraightRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.base.v1.MoveStraightRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :distance_mm, 2, type: :int64, json_name: "distanceMm"
  field :mm_per_sec, 3, type: :double, json_name: "mmPerSec"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Base.V1.MoveStraightResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.base.v1.MoveStraightResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Base.V1.SpinRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.base.v1.SpinRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :angle_deg, 2, type: :double, json_name: "angleDeg"
  field :degs_per_sec, 3, type: :double, json_name: "degsPerSec"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Base.V1.SpinResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.base.v1.SpinResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Base.V1.StopRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.base.v1.StopRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Base.V1.StopResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.base.v1.StopResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Base.V1.SetPowerRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.base.v1.SetPowerRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :linear, 2, type: Viam.Common.V1.Vector3
  field :angular, 3, type: Viam.Common.V1.Vector3
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Base.V1.SetPowerResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.base.v1.SetPowerResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Base.V1.SetVelocityRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.base.v1.SetVelocityRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :linear, 2, type: Viam.Common.V1.Vector3
  field :angular, 3, type: Viam.Common.V1.Vector3
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Base.V1.SetVelocityResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.base.v1.SetVelocityResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Base.V1.IsMovingRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.base.v1.IsMovingRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
end

defmodule Viam.Component.Base.V1.IsMovingResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.base.v1.IsMovingResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :is_moving, 1, type: :bool, json_name: "isMoving"
end

defmodule Viam.Component.Base.V1.GetPropertiesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.base.v1.GetPropertiesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Base.V1.GetPropertiesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.base.v1.GetPropertiesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :width_meters, 1, type: :double, json_name: "widthMeters"
  field :turning_radius_meters, 2, type: :double, json_name: "turningRadiusMeters"
  field :wheel_circumference_meters, 3, type: :double, json_name: "wheelCircumferenceMeters"
end

defmodule Viam.Component.Base.V1.BaseService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.component.base.v1.BaseService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :MoveStraight,
      Viam.Component.Base.V1.MoveStraightRequest,
      Viam.Component.Base.V1.MoveStraightResponse

  rpc :Spin, Viam.Component.Base.V1.SpinRequest, Viam.Component.Base.V1.SpinResponse

  rpc :SetPower, Viam.Component.Base.V1.SetPowerRequest, Viam.Component.Base.V1.SetPowerResponse

  rpc :SetVelocity,
      Viam.Component.Base.V1.SetVelocityRequest,
      Viam.Component.Base.V1.SetVelocityResponse

  rpc :Stop, Viam.Component.Base.V1.StopRequest, Viam.Component.Base.V1.StopResponse

  rpc :IsMoving, Viam.Component.Base.V1.IsMovingRequest, Viam.Component.Base.V1.IsMovingResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse

  rpc :GetGeometries, Viam.Common.V1.GetGeometriesRequest, Viam.Common.V1.GetGeometriesResponse

  rpc :GetProperties,
      Viam.Component.Base.V1.GetPropertiesRequest,
      Viam.Component.Base.V1.GetPropertiesResponse
end

defmodule Viam.Component.Base.V1.BaseService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Component.Base.V1.BaseService.Service
end
