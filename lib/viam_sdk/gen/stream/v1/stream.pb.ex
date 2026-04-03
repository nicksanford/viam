defmodule Proto.Stream.V1.ListStreamsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "proto.stream.v1.ListStreamsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Proto.Stream.V1.ListStreamsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "proto.stream.v1.ListStreamsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :names, 1, repeated: true, type: :string
end

defmodule Proto.Stream.V1.AddStreamRequest do
  @moduledoc false

  use Protobuf,
    full_name: "proto.stream.v1.AddStreamRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
end

defmodule Proto.Stream.V1.AddStreamResponse do
  @moduledoc false

  use Protobuf,
    full_name: "proto.stream.v1.AddStreamResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Proto.Stream.V1.RemoveStreamRequest do
  @moduledoc false

  use Protobuf,
    full_name: "proto.stream.v1.RemoveStreamRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
end

defmodule Proto.Stream.V1.RemoveStreamResponse do
  @moduledoc false

  use Protobuf,
    full_name: "proto.stream.v1.RemoveStreamResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Proto.Stream.V1.Resolution do
  @moduledoc false

  use Protobuf,
    full_name: "proto.stream.v1.Resolution",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :width, 1, type: :int32
  field :height, 2, type: :int32
end

defmodule Proto.Stream.V1.GetStreamOptionsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "proto.stream.v1.GetStreamOptionsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
end

defmodule Proto.Stream.V1.GetStreamOptionsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "proto.stream.v1.GetStreamOptionsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :resolutions, 1, repeated: true, type: Proto.Stream.V1.Resolution
end

defmodule Proto.Stream.V1.SetStreamOptionsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "proto.stream.v1.SetStreamOptionsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :resolution, 2, type: Proto.Stream.V1.Resolution
end

defmodule Proto.Stream.V1.SetStreamOptionsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "proto.stream.v1.SetStreamOptionsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Proto.Stream.V1.StreamService.Service do
  @moduledoc false

  use GRPC.Service, name: "proto.stream.v1.StreamService", protoc_gen_elixir_version: "0.16.0"

  rpc :ListStreams, Proto.Stream.V1.ListStreamsRequest, Proto.Stream.V1.ListStreamsResponse

  rpc :AddStream, Proto.Stream.V1.AddStreamRequest, Proto.Stream.V1.AddStreamResponse

  rpc :GetStreamOptions,
      Proto.Stream.V1.GetStreamOptionsRequest,
      Proto.Stream.V1.GetStreamOptionsResponse

  rpc :SetStreamOptions,
      Proto.Stream.V1.SetStreamOptionsRequest,
      Proto.Stream.V1.SetStreamOptionsResponse

  rpc :RemoveStream, Proto.Stream.V1.RemoveStreamRequest, Proto.Stream.V1.RemoveStreamResponse
end

defmodule Proto.Stream.V1.StreamService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Proto.Stream.V1.StreamService.Service
end
