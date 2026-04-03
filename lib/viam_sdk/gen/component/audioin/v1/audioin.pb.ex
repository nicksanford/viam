defmodule Viam.Component.Audioin.V1.GetAudioRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.audioin.v1.GetAudioRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :duration_seconds, 2, type: :float, json_name: "durationSeconds"
  field :codec, 3, type: :string
  field :request_id, 4, type: :string, json_name: "requestId"

  field :previous_timestamp_nanoseconds, 5,
    type: :int64,
    json_name: "previousTimestampNanoseconds"

  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Audioin.V1.GetAudioResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.audioin.v1.GetAudioResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :audio, 1, type: Viam.Component.Audioin.V1.AudioChunk
  field :request_id, 2, type: :string, json_name: "requestId"
end

defmodule Viam.Component.Audioin.V1.AudioChunk do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.audioin.v1.AudioChunk",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :audio_data, 1, type: :bytes, json_name: "audioData"
  field :audio_info, 2, type: Viam.Common.V1.AudioInfo, json_name: "audioInfo"
  field :start_timestamp_nanoseconds, 3, type: :int64, json_name: "startTimestampNanoseconds"
  field :end_timestamp_nanoseconds, 4, type: :int64, json_name: "endTimestampNanoseconds"
  field :sequence, 5, type: :int32
end

defmodule Viam.Component.Audioin.V1.AudioInService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.component.audioin.v1.AudioInService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :GetAudio,
      Viam.Component.Audioin.V1.GetAudioRequest,
      stream(Viam.Component.Audioin.V1.GetAudioResponse)

  rpc :GetProperties, Viam.Common.V1.GetPropertiesRequest, Viam.Common.V1.GetPropertiesResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse

  rpc :GetGeometries, Viam.Common.V1.GetGeometriesRequest, Viam.Common.V1.GetGeometriesResponse
end

defmodule Viam.Component.Audioin.V1.AudioInService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Component.Audioin.V1.AudioInService.Service
end
