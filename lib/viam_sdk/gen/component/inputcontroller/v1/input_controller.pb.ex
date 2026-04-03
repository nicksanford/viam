defmodule Viam.Component.Inputcontroller.V1.GetControlsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.inputcontroller.v1.GetControlsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :controller, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Inputcontroller.V1.GetControlsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.inputcontroller.v1.GetControlsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :controls, 1, repeated: true, type: :string
end

defmodule Viam.Component.Inputcontroller.V1.GetEventsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.inputcontroller.v1.GetEventsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :controller, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Inputcontroller.V1.GetEventsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.inputcontroller.v1.GetEventsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :events, 1, repeated: true, type: Viam.Component.Inputcontroller.V1.Event
end

defmodule Viam.Component.Inputcontroller.V1.TriggerEventRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.inputcontroller.v1.TriggerEventRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :controller, 1, type: :string
  field :event, 2, type: Viam.Component.Inputcontroller.V1.Event
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Inputcontroller.V1.TriggerEventResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.inputcontroller.v1.TriggerEventResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Inputcontroller.V1.Event do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.inputcontroller.v1.Event",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :time, 1, type: Google.Protobuf.Timestamp
  field :event, 2, type: :string
  field :control, 3, type: :string
  field :value, 4, type: :double
end

defmodule Viam.Component.Inputcontroller.V1.StreamEventsRequest.Events do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.inputcontroller.v1.StreamEventsRequest.Events",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :control, 1, type: :string
  field :events, 2, repeated: true, type: :string
  field :cancelled_events, 3, repeated: true, type: :string, json_name: "cancelledEvents"
end

defmodule Viam.Component.Inputcontroller.V1.StreamEventsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.inputcontroller.v1.StreamEventsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :controller, 1, type: :string

  field :events, 2,
    repeated: true,
    type: Viam.Component.Inputcontroller.V1.StreamEventsRequest.Events

  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Inputcontroller.V1.StreamEventsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.inputcontroller.v1.StreamEventsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :event, 1, type: Viam.Component.Inputcontroller.V1.Event
end

defmodule Viam.Component.Inputcontroller.V1.Status do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.inputcontroller.v1.Status",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :events, 1, repeated: true, type: Viam.Component.Inputcontroller.V1.Event
end

defmodule Viam.Component.Inputcontroller.V1.InputControllerService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.component.inputcontroller.v1.InputControllerService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :GetControls,
      Viam.Component.Inputcontroller.V1.GetControlsRequest,
      Viam.Component.Inputcontroller.V1.GetControlsResponse

  rpc :GetEvents,
      Viam.Component.Inputcontroller.V1.GetEventsRequest,
      Viam.Component.Inputcontroller.V1.GetEventsResponse

  rpc :StreamEvents,
      Viam.Component.Inputcontroller.V1.StreamEventsRequest,
      stream(Viam.Component.Inputcontroller.V1.StreamEventsResponse)

  rpc :TriggerEvent,
      Viam.Component.Inputcontroller.V1.TriggerEventRequest,
      Viam.Component.Inputcontroller.V1.TriggerEventResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse

  rpc :GetGeometries, Viam.Common.V1.GetGeometriesRequest, Viam.Common.V1.GetGeometriesResponse
end

defmodule Viam.Component.Inputcontroller.V1.InputControllerService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Component.Inputcontroller.V1.InputControllerService.Service
end
