defmodule Viam.App.Datasync.V1.MimeType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.datasync.v1.MimeType",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :MIME_TYPE_UNSPECIFIED, 0
  field :MIME_TYPE_IMAGE_JPEG, 1
  field :MIME_TYPE_IMAGE_PNG, 2
  field :MIME_TYPE_APPLICATION_PCD, 3
  field :MIME_TYPE_VIDEO_MP4, 4
end

defmodule Viam.App.Datasync.V1.DataType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.datasync.v1.DataType",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :DATA_TYPE_UNSPECIFIED, 0
  field :DATA_TYPE_BINARY_SENSOR, 1
  field :DATA_TYPE_TABULAR_SENSOR, 2
  field :DATA_TYPE_FILE, 3
end

defmodule Viam.App.Datasync.V1.DataCaptureUploadRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datasync.v1.DataCaptureUploadRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :metadata, 1, type: Viam.App.Datasync.V1.UploadMetadata

  field :sensor_contents, 2,
    repeated: true,
    type: Viam.App.Datasync.V1.SensorData,
    json_name: "sensorContents"
end

defmodule Viam.App.Datasync.V1.DataCaptureUploadResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datasync.v1.DataCaptureUploadResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :file_id, 1, type: :string, json_name: "fileId"
  field :binary_data_id, 2, type: :string, json_name: "binaryDataId"
end

defmodule Viam.App.Datasync.V1.FileUploadRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datasync.v1.FileUploadRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :upload_packet, 0

  field :metadata, 1, type: Viam.App.Datasync.V1.UploadMetadata, oneof: 0

  field :file_contents, 2,
    type: Viam.App.Datasync.V1.FileData,
    json_name: "fileContents",
    oneof: 0
end

defmodule Viam.App.Datasync.V1.FileUploadResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datasync.v1.FileUploadResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :file_id, 1, type: :string, json_name: "fileId", deprecated: true
  field :binary_data_id, 2, type: :string, json_name: "binaryDataId"
end

defmodule Viam.App.Datasync.V1.StreamingDataCaptureUploadRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datasync.v1.StreamingDataCaptureUploadRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :upload_packet, 0

  field :metadata, 1, type: Viam.App.Datasync.V1.DataCaptureUploadMetadata, oneof: 0
  field :data, 2, type: :bytes, oneof: 0
end

defmodule Viam.App.Datasync.V1.StreamingDataCaptureUploadResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datasync.v1.StreamingDataCaptureUploadResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :file_id, 1, type: :string, json_name: "fileId", deprecated: true
  field :binary_data_id, 2, type: :string, json_name: "binaryDataId"
end

defmodule Viam.App.Datasync.V1.SensorMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datasync.v1.SensorMetadata",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :time_requested, 1, type: Google.Protobuf.Timestamp, json_name: "timeRequested"
  field :time_received, 2, type: Google.Protobuf.Timestamp, json_name: "timeReceived"

  field :mime_type, 3,
    type: Viam.App.Datasync.V1.MimeType,
    json_name: "mimeType",
    enum: true,
    deprecated: true

  field :annotations, 4, type: Viam.App.Data.V1.Annotations
end

defmodule Viam.App.Datasync.V1.SensorData do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datasync.v1.SensorData",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :data, 0

  field :metadata, 1, type: Viam.App.Datasync.V1.SensorMetadata
  field :struct, 2, type: Google.Protobuf.Struct, oneof: 0
  field :binary, 3, type: :bytes, oneof: 0
end

defmodule Viam.App.Datasync.V1.FileData do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datasync.v1.FileData",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :data, 1, type: :bytes
end

defmodule Viam.App.Datasync.V1.UploadMetadata.MethodParametersEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datasync.v1.UploadMetadata.MethodParametersEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Any
end

defmodule Viam.App.Datasync.V1.UploadMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datasync.v1.UploadMetadata",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :part_id, 1, type: :string, json_name: "partId"
  field :component_type, 2, type: :string, json_name: "componentType"
  field :component_name, 3, type: :string, json_name: "componentName"
  field :method_name, 5, type: :string, json_name: "methodName"
  field :type, 6, type: Viam.App.Datasync.V1.DataType, enum: true

  field :method_parameters, 8,
    repeated: true,
    type: Viam.App.Datasync.V1.UploadMetadata.MethodParametersEntry,
    json_name: "methodParameters",
    map: true

  field :file_name, 7, type: :string, json_name: "fileName"
  field :file_extension, 9, type: :string, json_name: "fileExtension"
  field :file_create_time, 14, type: Google.Protobuf.Timestamp, json_name: "fileCreateTime"
  field :file_modify_time, 15, type: Google.Protobuf.Timestamp, json_name: "fileModifyTime"
  field :tags, 10, repeated: true, type: :string
  field :dataset_ids, 12, repeated: true, type: :string, json_name: "datasetIds"
  field :mime_type, 13, type: :string, json_name: "mimeType"
end

defmodule Viam.App.Datasync.V1.CaptureInterval do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datasync.v1.CaptureInterval",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :start, 1, type: Google.Protobuf.Timestamp
  field :end, 2, type: Google.Protobuf.Timestamp
end

defmodule Viam.App.Datasync.V1.DataCaptureMetadata.MethodParametersEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datasync.v1.DataCaptureMetadata.MethodParametersEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Any
end

defmodule Viam.App.Datasync.V1.DataCaptureMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datasync.v1.DataCaptureMetadata",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :component_type, 1, type: :string, json_name: "componentType"
  field :component_name, 2, type: :string, json_name: "componentName"
  field :method_name, 4, type: :string, json_name: "methodName"
  field :type, 5, type: Viam.App.Datasync.V1.DataType, enum: true

  field :method_parameters, 6,
    repeated: true,
    type: Viam.App.Datasync.V1.DataCaptureMetadata.MethodParametersEntry,
    json_name: "methodParameters",
    map: true

  field :file_extension, 7, type: :string, json_name: "fileExtension"
  field :tags, 8, repeated: true, type: :string
  field :mime_type, 10, type: :string, json_name: "mimeType"
end

defmodule Viam.App.Datasync.V1.DataCaptureUploadMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datasync.v1.DataCaptureUploadMetadata",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :upload_metadata, 1,
    type: Viam.App.Datasync.V1.UploadMetadata,
    json_name: "uploadMetadata"

  field :sensor_metadata, 2,
    type: Viam.App.Datasync.V1.SensorMetadata,
    json_name: "sensorMetadata"
end

defmodule Viam.App.Datasync.V1.DataSyncService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.app.datasync.v1.DataSyncService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :DataCaptureUpload,
      Viam.App.Datasync.V1.DataCaptureUploadRequest,
      Viam.App.Datasync.V1.DataCaptureUploadResponse

  rpc :FileUpload,
      stream(Viam.App.Datasync.V1.FileUploadRequest),
      Viam.App.Datasync.V1.FileUploadResponse

  rpc :StreamingDataCaptureUpload,
      stream(Viam.App.Datasync.V1.StreamingDataCaptureUploadRequest),
      Viam.App.Datasync.V1.StreamingDataCaptureUploadResponse
end

defmodule Viam.App.Datasync.V1.DataSyncService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.App.Datasync.V1.DataSyncService.Service
end
