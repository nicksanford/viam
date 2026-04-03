defmodule Viam.Service.Video.V1.GetVideoRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.video.v1.GetVideoRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :start_timestamp, 2, type: Google.Protobuf.Timestamp, json_name: "startTimestamp"
  field :end_timestamp, 3, type: Google.Protobuf.Timestamp, json_name: "endTimestamp"
  field :video_codec, 4, type: :string, json_name: "videoCodec"
  field :video_container, 5, type: :string, json_name: "videoContainer"
  field :request_id, 6, type: :string, json_name: "requestId"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Video.V1.GetVideoResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.video.v1.GetVideoResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :video_data, 1, type: :bytes, json_name: "videoData"
  field :video_container, 2, type: :string, json_name: "videoContainer"
  field :request_id, 3, type: :string, json_name: "requestId"
end

defmodule Viam.Service.Video.V1.VideoService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.service.video.v1.VideoService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :GetVideo,
      Viam.Service.Video.V1.GetVideoRequest,
      stream(Viam.Service.Video.V1.GetVideoResponse)

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse
end

defmodule Viam.Service.Video.V1.VideoService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Service.Video.V1.VideoService.Service
end
