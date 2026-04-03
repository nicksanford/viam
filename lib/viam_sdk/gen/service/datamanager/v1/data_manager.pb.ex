defmodule Viam.Service.Datamanager.V1.SyncRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.datamanager.v1.SyncRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Datamanager.V1.SyncResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.datamanager.v1.SyncResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Service.Datamanager.V1.UploadBinaryDataToDatasetsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.datamanager.v1.UploadBinaryDataToDatasetsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :binary_data, 2, type: :bytes, json_name: "binaryData"
  field :tags, 3, repeated: true, type: :string
  field :dataset_ids, 4, repeated: true, type: :string, json_name: "datasetIds"
  field :mime_type, 5, type: Viam.App.Datasync.V1.MimeType, json_name: "mimeType", enum: true
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Datamanager.V1.UploadBinaryDataToDatasetsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.datamanager.v1.UploadBinaryDataToDatasetsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Service.Datamanager.V1.DataManagerService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.service.datamanager.v1.DataManagerService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :Sync, Viam.Service.Datamanager.V1.SyncRequest, Viam.Service.Datamanager.V1.SyncResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse

  rpc :UploadBinaryDataToDatasets,
      Viam.Service.Datamanager.V1.UploadBinaryDataToDatasetsRequest,
      Viam.Service.Datamanager.V1.UploadBinaryDataToDatasetsResponse
end

defmodule Viam.Service.Datamanager.V1.DataManagerService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Service.Datamanager.V1.DataManagerService.Service
end
