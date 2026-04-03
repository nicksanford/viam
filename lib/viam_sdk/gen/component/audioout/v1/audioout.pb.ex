defmodule Viam.Component.Audioout.V1.PlayRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.audioout.v1.PlayRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :audio_data, 2, type: :bytes, json_name: "audioData"
  field :audio_info, 3, type: Viam.Common.V1.AudioInfo, json_name: "audioInfo"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Audioout.V1.PlayResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.audioout.v1.PlayResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Component.Audioout.V1.AudioOutService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.component.audioout.v1.AudioOutService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :Play, Viam.Component.Audioout.V1.PlayRequest, Viam.Component.Audioout.V1.PlayResponse

  rpc :GetProperties, Viam.Common.V1.GetPropertiesRequest, Viam.Common.V1.GetPropertiesResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse

  rpc :GetGeometries, Viam.Common.V1.GetGeometriesRequest, Viam.Common.V1.GetGeometriesResponse
end

defmodule Viam.Component.Audioout.V1.AudioOutService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Component.Audioout.V1.AudioOutService.Service
end
