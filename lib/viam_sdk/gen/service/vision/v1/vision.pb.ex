defmodule Viam.Service.Vision.V1.GetDetectionsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.vision.v1.GetDetectionsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :image, 2, type: :bytes
  field :width, 3, type: :int64
  field :height, 4, type: :int64
  field :mime_type, 5, type: :string, json_name: "mimeType"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Vision.V1.GetDetectionsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.vision.v1.GetDetectionsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :detections, 1, repeated: true, type: Viam.Service.Vision.V1.Detection
end

defmodule Viam.Service.Vision.V1.GetDetectionsFromCameraRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.vision.v1.GetDetectionsFromCameraRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :camera_name, 2, type: :string, json_name: "cameraName"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Vision.V1.GetDetectionsFromCameraResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.vision.v1.GetDetectionsFromCameraResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :detections, 1, repeated: true, type: Viam.Service.Vision.V1.Detection
end

defmodule Viam.Service.Vision.V1.Detection do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.vision.v1.Detection",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :x_min, 1, proto3_optional: true, type: :int64, json_name: "xMin"
  field :y_min, 2, proto3_optional: true, type: :int64, json_name: "yMin"
  field :x_max, 3, proto3_optional: true, type: :int64, json_name: "xMax"
  field :y_max, 4, proto3_optional: true, type: :int64, json_name: "yMax"
  field :confidence, 5, type: :double
  field :class_name, 6, type: :string, json_name: "className"
  field :x_min_normalized, 7, proto3_optional: true, type: :double, json_name: "xMinNormalized"
  field :y_min_normalized, 8, proto3_optional: true, type: :double, json_name: "yMinNormalized"
  field :x_max_normalized, 9, proto3_optional: true, type: :double, json_name: "xMaxNormalized"
  field :y_max_normalized, 10, proto3_optional: true, type: :double, json_name: "yMaxNormalized"
end

defmodule Viam.Service.Vision.V1.GetClassificationsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.vision.v1.GetClassificationsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :image, 2, type: :bytes
  field :width, 3, type: :int32
  field :height, 4, type: :int32
  field :mime_type, 5, type: :string, json_name: "mimeType"
  field :n, 6, type: :int32
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Vision.V1.GetClassificationsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.vision.v1.GetClassificationsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :classifications, 1, repeated: true, type: Viam.Service.Vision.V1.Classification
end

defmodule Viam.Service.Vision.V1.GetClassificationsFromCameraRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.vision.v1.GetClassificationsFromCameraRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :camera_name, 2, type: :string, json_name: "cameraName"
  field :n, 3, type: :int32
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Vision.V1.GetClassificationsFromCameraResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.vision.v1.GetClassificationsFromCameraResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :classifications, 1, repeated: true, type: Viam.Service.Vision.V1.Classification
end

defmodule Viam.Service.Vision.V1.Classification do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.vision.v1.Classification",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :class_name, 1, type: :string, json_name: "className"
  field :confidence, 2, type: :double
end

defmodule Viam.Service.Vision.V1.GetObjectPointCloudsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.vision.v1.GetObjectPointCloudsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :camera_name, 2, type: :string, json_name: "cameraName"
  field :mime_type, 3, type: :string, json_name: "mimeType"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Vision.V1.GetObjectPointCloudsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.vision.v1.GetObjectPointCloudsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :mime_type, 1, type: :string, json_name: "mimeType"
  field :objects, 2, repeated: true, type: Viam.Common.V1.PointCloudObject
end

defmodule Viam.Service.Vision.V1.GetPropertiesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.vision.v1.GetPropertiesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Vision.V1.CaptureAllFromCameraRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.vision.v1.CaptureAllFromCameraRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :camera_name, 2, type: :string, json_name: "cameraName"
  field :return_image, 3, type: :bool, json_name: "returnImage"
  field :return_classifications, 4, type: :bool, json_name: "returnClassifications"
  field :return_detections, 5, type: :bool, json_name: "returnDetections"
  field :return_object_point_clouds, 6, type: :bool, json_name: "returnObjectPointClouds"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Vision.V1.CaptureAllFromCameraResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.vision.v1.CaptureAllFromCameraResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :image, 1, type: Viam.Component.Camera.V1.Image
  field :detections, 2, repeated: true, type: Viam.Service.Vision.V1.Detection
  field :classifications, 3, repeated: true, type: Viam.Service.Vision.V1.Classification
  field :objects, 4, repeated: true, type: Viam.Common.V1.PointCloudObject
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Vision.V1.GetPropertiesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.vision.v1.GetPropertiesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :classifications_supported, 1, type: :bool, json_name: "classificationsSupported"
  field :detections_supported, 2, type: :bool, json_name: "detectionsSupported"
  field :object_point_clouds_supported, 3, type: :bool, json_name: "objectPointCloudsSupported"
end

defmodule Viam.Service.Vision.V1.VisionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.service.vision.v1.VisionService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :GetDetectionsFromCamera,
      Viam.Service.Vision.V1.GetDetectionsFromCameraRequest,
      Viam.Service.Vision.V1.GetDetectionsFromCameraResponse

  rpc :GetDetections,
      Viam.Service.Vision.V1.GetDetectionsRequest,
      Viam.Service.Vision.V1.GetDetectionsResponse

  rpc :GetClassificationsFromCamera,
      Viam.Service.Vision.V1.GetClassificationsFromCameraRequest,
      Viam.Service.Vision.V1.GetClassificationsFromCameraResponse

  rpc :GetClassifications,
      Viam.Service.Vision.V1.GetClassificationsRequest,
      Viam.Service.Vision.V1.GetClassificationsResponse

  rpc :GetObjectPointClouds,
      Viam.Service.Vision.V1.GetObjectPointCloudsRequest,
      Viam.Service.Vision.V1.GetObjectPointCloudsResponse

  rpc :GetProperties,
      Viam.Service.Vision.V1.GetPropertiesRequest,
      Viam.Service.Vision.V1.GetPropertiesResponse

  rpc :CaptureAllFromCamera,
      Viam.Service.Vision.V1.CaptureAllFromCameraRequest,
      Viam.Service.Vision.V1.CaptureAllFromCameraResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse
end

defmodule Viam.Service.Vision.V1.VisionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Service.Vision.V1.VisionService.Service
end
