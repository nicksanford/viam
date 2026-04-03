defmodule Viam.Service.Navigation.V1.MapType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.service.navigation.v1.MapType",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :MAP_TYPE_UNSPECIFIED, 0
  field :MAP_TYPE_NONE, 1
  field :MAP_TYPE_GPS, 2
end

defmodule Viam.Service.Navigation.V1.Mode do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.service.navigation.v1.Mode",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :MODE_UNSPECIFIED, 0
  field :MODE_MANUAL, 1
  field :MODE_WAYPOINT, 2
  field :MODE_EXPLORE, 3
end

defmodule Viam.Service.Navigation.V1.GetModeRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.navigation.v1.GetModeRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Navigation.V1.GetModeResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.navigation.v1.GetModeResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :mode, 1, type: Viam.Service.Navigation.V1.Mode, enum: true
end

defmodule Viam.Service.Navigation.V1.SetModeRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.navigation.v1.SetModeRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :mode, 2, type: Viam.Service.Navigation.V1.Mode, enum: true
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Navigation.V1.SetModeResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.navigation.v1.SetModeResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Service.Navigation.V1.Waypoint do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.navigation.v1.Waypoint",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :location, 2, type: Viam.Common.V1.GeoPoint
end

defmodule Viam.Service.Navigation.V1.GetLocationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.navigation.v1.GetLocationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Navigation.V1.GetLocationResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.navigation.v1.GetLocationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :location, 1, type: Viam.Common.V1.GeoPoint
  field :compass_heading, 2, type: :double, json_name: "compassHeading"
end

defmodule Viam.Service.Navigation.V1.GetWaypointsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.navigation.v1.GetWaypointsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Navigation.V1.GetWaypointsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.navigation.v1.GetWaypointsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :waypoints, 1, repeated: true, type: Viam.Service.Navigation.V1.Waypoint
end

defmodule Viam.Service.Navigation.V1.AddWaypointRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.navigation.v1.AddWaypointRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :location, 2, type: Viam.Common.V1.GeoPoint
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Navigation.V1.AddWaypointResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.navigation.v1.AddWaypointResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Service.Navigation.V1.RemoveWaypointRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.navigation.v1.RemoveWaypointRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :id, 2, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Navigation.V1.RemoveWaypointResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.navigation.v1.RemoveWaypointResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Service.Navigation.V1.GetObstaclesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.navigation.v1.GetObstaclesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Navigation.V1.GetObstaclesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.navigation.v1.GetObstaclesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :obstacles, 1, repeated: true, type: Viam.Common.V1.GeoGeometry
end

defmodule Viam.Service.Navigation.V1.Path do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.navigation.v1.Path",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :destination_waypoint_id, 1, type: :string, json_name: "destinationWaypointId"
  field :geopoints, 2, repeated: true, type: Viam.Common.V1.GeoPoint
end

defmodule Viam.Service.Navigation.V1.GetPathsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.navigation.v1.GetPathsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Navigation.V1.GetPathsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.navigation.v1.GetPathsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :paths, 1, repeated: true, type: Viam.Service.Navigation.V1.Path
end

defmodule Viam.Service.Navigation.V1.GetPropertiesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.navigation.v1.GetPropertiesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
end

defmodule Viam.Service.Navigation.V1.GetPropertiesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.navigation.v1.GetPropertiesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :map_type, 1, type: Viam.Service.Navigation.V1.MapType, json_name: "mapType", enum: true
end

defmodule Viam.Service.Navigation.V1.NavigationService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.service.navigation.v1.NavigationService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :GetMode,
      Viam.Service.Navigation.V1.GetModeRequest,
      Viam.Service.Navigation.V1.GetModeResponse

  rpc :SetMode,
      Viam.Service.Navigation.V1.SetModeRequest,
      Viam.Service.Navigation.V1.SetModeResponse

  rpc :GetLocation,
      Viam.Service.Navigation.V1.GetLocationRequest,
      Viam.Service.Navigation.V1.GetLocationResponse

  rpc :GetWaypoints,
      Viam.Service.Navigation.V1.GetWaypointsRequest,
      Viam.Service.Navigation.V1.GetWaypointsResponse

  rpc :AddWaypoint,
      Viam.Service.Navigation.V1.AddWaypointRequest,
      Viam.Service.Navigation.V1.AddWaypointResponse

  rpc :RemoveWaypoint,
      Viam.Service.Navigation.V1.RemoveWaypointRequest,
      Viam.Service.Navigation.V1.RemoveWaypointResponse

  rpc :GetObstacles,
      Viam.Service.Navigation.V1.GetObstaclesRequest,
      Viam.Service.Navigation.V1.GetObstaclesResponse

  rpc :GetPaths,
      Viam.Service.Navigation.V1.GetPathsRequest,
      Viam.Service.Navigation.V1.GetPathsResponse

  rpc :GetProperties,
      Viam.Service.Navigation.V1.GetPropertiesRequest,
      Viam.Service.Navigation.V1.GetPropertiesResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse
end

defmodule Viam.Service.Navigation.V1.NavigationService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Service.Navigation.V1.NavigationService.Service
end
