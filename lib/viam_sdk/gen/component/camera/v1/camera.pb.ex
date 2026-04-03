defmodule Viam.Component.Camera.V1.GetImagesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.camera.v1.GetImagesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :filter_source_names, 2, repeated: true, type: :string, json_name: "filterSourceNames"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Camera.V1.GetImagesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.camera.v1.GetImagesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :images, 1, repeated: true, type: Viam.Component.Camera.V1.Image

  field :response_metadata, 84260,
    type: Viam.Common.V1.ResponseMetadata,
    json_name: "responseMetadata"
end

defmodule Viam.Component.Camera.V1.Image do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.camera.v1.Image",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :source_name, 1, type: :string, json_name: "sourceName"
  field :image, 3, type: :bytes
  field :mime_type, 4, type: :string, json_name: "mimeType"
  field :annotations, 5, type: Viam.App.Data.V1.Annotations
end

defmodule Viam.Component.Camera.V1.GetPointCloudRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.camera.v1.GetPointCloudRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :mime_type, 2, type: :string, json_name: "mimeType"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Component.Camera.V1.GetPointCloudResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.camera.v1.GetPointCloudResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :mime_type, 1, type: :string, json_name: "mimeType"
  field :point_cloud, 2, type: :bytes, json_name: "pointCloud"
end

defmodule Viam.Component.Camera.V1.GetPropertiesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.camera.v1.GetPropertiesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
end

defmodule Viam.Component.Camera.V1.GetPropertiesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.camera.v1.GetPropertiesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :supports_pcd, 1, type: :bool, json_name: "supportsPcd"

  field :intrinsic_parameters, 2,
    type: Viam.Component.Camera.V1.IntrinsicParameters,
    json_name: "intrinsicParameters"

  field :distortion_parameters, 3,
    type: Viam.Component.Camera.V1.DistortionParameters,
    json_name: "distortionParameters"

  field :mime_types, 4, repeated: true, type: :string, json_name: "mimeTypes"
  field :frame_rate, 5, proto3_optional: true, type: :float, json_name: "frameRate"

  field :extrinsic_parameters, 6,
    type: Viam.Component.Camera.V1.ExtrinsicParameters,
    json_name: "extrinsicParameters"
end

defmodule Viam.Component.Camera.V1.Webcams do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.camera.v1.Webcams",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :webcams, 1, repeated: true, type: Viam.Component.Camera.V1.Webcam
end

defmodule Viam.Component.Camera.V1.Webcam do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.camera.v1.Webcam",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :label, 1, type: :string
  field :status, 2, type: :string
  field :properties, 3, repeated: true, type: Viam.Component.Camera.V1.Property
  field :name, 4, type: :string
  field :id, 5, type: :string
end

defmodule Viam.Component.Camera.V1.Property do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.camera.v1.Property",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :width_px, 1, type: :int32, json_name: "widthPx"
  field :height_px, 2, type: :int32, json_name: "heightPx"
  field :frame_format, 3, type: :string, json_name: "frameFormat"
  field :frame_rate, 4, type: :float, json_name: "frameRate"
end

defmodule Viam.Component.Camera.V1.IntrinsicParameters do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.camera.v1.IntrinsicParameters",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :width_px, 1, type: :uint32, json_name: "widthPx"
  field :height_px, 2, type: :uint32, json_name: "heightPx"
  field :focal_x_px, 3, type: :double, json_name: "focalXPx"
  field :focal_y_px, 4, type: :double, json_name: "focalYPx"
  field :center_x_px, 5, type: :double, json_name: "centerXPx"
  field :center_y_px, 6, type: :double, json_name: "centerYPx"
end

defmodule Viam.Component.Camera.V1.DistortionParameters do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.camera.v1.DistortionParameters",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :model, 1, type: :string
  field :parameters, 2, repeated: true, type: :double
end

defmodule Viam.Component.Camera.V1.ExtrinsicParameters do
  @moduledoc false

  use Protobuf,
    full_name: "viam.component.camera.v1.ExtrinsicParameters",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :translation, 1, type: Viam.Common.V1.Vector3
  field :orientation, 2, type: Viam.Common.V1.Orientation
end

defmodule Viam.Component.Camera.V1.CameraService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.component.camera.v1.CameraService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :GetImages,
      Viam.Component.Camera.V1.GetImagesRequest,
      Viam.Component.Camera.V1.GetImagesResponse

  rpc :GetPointCloud,
      Viam.Component.Camera.V1.GetPointCloudRequest,
      Viam.Component.Camera.V1.GetPointCloudResponse

  rpc :GetProperties,
      Viam.Component.Camera.V1.GetPropertiesRequest,
      Viam.Component.Camera.V1.GetPropertiesResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse

  rpc :GetGeometries, Viam.Common.V1.GetGeometriesRequest, Viam.Common.V1.GetGeometriesResponse
end

defmodule Viam.Component.Camera.V1.CameraService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Component.Camera.V1.CameraService.Service
end
