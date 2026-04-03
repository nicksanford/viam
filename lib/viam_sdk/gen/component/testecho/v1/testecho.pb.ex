defmodule Viam.Component.Testecho.V1.EchoRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.testecho.v1.EchoRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :message, 2, type: :string
end

defmodule Viam.Component.Testecho.V1.EchoResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.testecho.v1.EchoResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :message, 1, type: :string
end

defmodule Viam.Component.Testecho.V1.EchoMultipleRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.testecho.v1.EchoMultipleRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :message, 2, type: :string
end

defmodule Viam.Component.Testecho.V1.EchoMultipleResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.testecho.v1.EchoMultipleResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :message, 1, type: :string
end

defmodule Viam.Component.Testecho.V1.EchoBiDiRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.testecho.v1.EchoBiDiRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :message, 2, type: :string
end

defmodule Viam.Component.Testecho.V1.EchoBiDiResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.testecho.v1.EchoBiDiResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :message, 1, type: :string
end

defmodule Viam.Component.Testecho.V1.StopRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.testecho.v1.StopRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
end

defmodule Viam.Component.Testecho.V1.StopResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.testecho.v1.StopResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Testecho.V1.TestEchoService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.component.testecho.v1.TestEchoService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :Echo, Viam.Component.Testecho.V1.EchoRequest, Viam.Component.Testecho.V1.EchoResponse

  rpc :EchoMultiple,
      Viam.Component.Testecho.V1.EchoMultipleRequest,
      stream(Viam.Component.Testecho.V1.EchoMultipleResponse)

  rpc :EchoBiDi,
      stream(Viam.Component.Testecho.V1.EchoBiDiRequest),
      stream(Viam.Component.Testecho.V1.EchoBiDiResponse)

  rpc :Stop, Viam.Component.Testecho.V1.StopRequest, Viam.Component.Testecho.V1.StopResponse
end

defmodule Viam.Component.Testecho.V1.TestEchoService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Component.Testecho.V1.TestEchoService.Service
end
