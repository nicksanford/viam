defmodule Viam.App.Mltraining.V1.ModelType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.mltraining.v1.ModelType",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :MODEL_TYPE_UNSPECIFIED, 0
  field :MODEL_TYPE_SINGLE_LABEL_CLASSIFICATION, 1
  field :MODEL_TYPE_MULTI_LABEL_CLASSIFICATION, 2
  field :MODEL_TYPE_OBJECT_DETECTION, 3
end

defmodule Viam.App.Mltraining.V1.ModelFramework do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.mltraining.v1.ModelFramework",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :MODEL_FRAMEWORK_UNSPECIFIED, 0
  field :MODEL_FRAMEWORK_TFLITE, 1
  field :MODEL_FRAMEWORK_TENSORFLOW, 2
  field :MODEL_FRAMEWORK_PYTORCH, 3
  field :MODEL_FRAMEWORK_ONNX, 4
end

defmodule Viam.App.Mltraining.V1.TrainingStatus do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.mltraining.v1.TrainingStatus",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :TRAINING_STATUS_UNSPECIFIED, 0
  field :TRAINING_STATUS_PENDING, 1
  field :TRAINING_STATUS_IN_PROGRESS, 2
  field :TRAINING_STATUS_COMPLETED, 3
  field :TRAINING_STATUS_FAILED, 4
  field :TRAINING_STATUS_CANCELED, 5
  field :TRAINING_STATUS_CANCELING, 6
end

defmodule Viam.App.Mltraining.V1.SubmitTrainingJobRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.mltraining.v1.SubmitTrainingJobRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :dataset_id, 7, type: :string, json_name: "datasetId", deprecated: false
  field :organization_id, 2, type: :string, json_name: "organizationId", deprecated: false
  field :model_name, 3, type: :string, json_name: "modelName", deprecated: false
  field :model_version, 4, type: :string, json_name: "modelVersion", deprecated: false

  field :model_type, 5,
    type: Viam.App.Mltraining.V1.ModelType,
    json_name: "modelType",
    enum: true,
    deprecated: false

  field :model_framework, 8,
    type: Viam.App.Mltraining.V1.ModelFramework,
    json_name: "modelFramework",
    enum: true,
    deprecated: false

  field :tags, 6, repeated: true, type: :string, deprecated: false
end

defmodule Viam.App.Mltraining.V1.SubmitTrainingJobResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.mltraining.v1.SubmitTrainingJobResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.Mltraining.V1.SubmitCustomTrainingJobRequest.ArgumentsEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.mltraining.v1.SubmitCustomTrainingJobRequest.ArgumentsEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Viam.App.Mltraining.V1.SubmitCustomTrainingJobRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.mltraining.v1.SubmitCustomTrainingJobRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :dataset_id, 1, type: :string, json_name: "datasetId", deprecated: false
  field :registry_item_id, 2, type: :string, json_name: "registryItemId", deprecated: false

  field :registry_item_version, 6,
    type: :string,
    json_name: "registryItemVersion",
    deprecated: false

  field :organization_id, 3, type: :string, json_name: "organizationId", deprecated: false
  field :model_name, 4, type: :string, json_name: "modelName", deprecated: false
  field :model_version, 5, type: :string, json_name: "modelVersion", deprecated: false

  field :arguments, 7,
    repeated: true,
    type: Viam.App.Mltraining.V1.SubmitCustomTrainingJobRequest.ArgumentsEntry,
    map: true

  field :container_version, 8, type: :string, json_name: "containerVersion"
end

defmodule Viam.App.Mltraining.V1.SubmitCustomTrainingJobResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.mltraining.v1.SubmitCustomTrainingJobResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.Mltraining.V1.GetTrainingJobRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.mltraining.v1.GetTrainingJobRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.Mltraining.V1.GetTrainingJobResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.mltraining.v1.GetTrainingJobResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :metadata, 1, type: Viam.App.Mltraining.V1.TrainingJobMetadata
end

defmodule Viam.App.Mltraining.V1.ListTrainingJobsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.mltraining.v1.ListTrainingJobsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :status, 2, type: Viam.App.Mltraining.V1.TrainingStatus, enum: true
end

defmodule Viam.App.Mltraining.V1.ListTrainingJobsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.mltraining.v1.ListTrainingJobsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :jobs, 1, repeated: true, type: Viam.App.Mltraining.V1.TrainingJobMetadata
end

defmodule Viam.App.Mltraining.V1.TrainingJobMetadata.ArgumentsEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.mltraining.v1.TrainingJobMetadata.ArgumentsEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Viam.App.Mltraining.V1.TrainingJobMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.mltraining.v1.TrainingJobMetadata",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 7, type: :string, deprecated: false
  field :dataset_id, 11, type: :string, json_name: "datasetId", deprecated: false
  field :organization_id, 12, type: :string, json_name: "organizationId", deprecated: false
  field :model_name, 13, type: :string, json_name: "modelName", deprecated: false
  field :model_version, 14, type: :string, json_name: "modelVersion", deprecated: false

  field :model_type, 15,
    type: Viam.App.Mltraining.V1.ModelType,
    json_name: "modelType",
    enum: true,
    deprecated: false

  field :model_framework, 17,
    type: Viam.App.Mltraining.V1.ModelFramework,
    json_name: "modelFramework",
    enum: true,
    deprecated: false

  field :is_custom_job, 18, type: :bool, json_name: "isCustomJob", deprecated: false
  field :registry_item_id, 19, type: :string, json_name: "registryItemId", deprecated: false

  field :registry_item_version, 20,
    type: :string,
    json_name: "registryItemVersion",
    deprecated: false

  field :status, 2, type: Viam.App.Mltraining.V1.TrainingStatus, enum: true, deprecated: false
  field :error_status, 8, type: Google.Rpc.Status, json_name: "errorStatus", deprecated: false
  field :created_on, 3, type: Google.Protobuf.Timestamp, json_name: "createdOn", deprecated: false

  field :last_modified, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "lastModified",
    deprecated: false

  field :training_started, 9,
    type: Google.Protobuf.Timestamp,
    json_name: "trainingStarted",
    deprecated: false

  field :training_ended, 10,
    type: Google.Protobuf.Timestamp,
    json_name: "trainingEnded",
    deprecated: false

  field :synced_model_id, 5, type: :string, json_name: "syncedModelId", deprecated: false
  field :tags, 16, repeated: true, type: :string, deprecated: false

  field :arguments, 21,
    repeated: true,
    type: Viam.App.Mltraining.V1.TrainingJobMetadata.ArgumentsEntry,
    map: true,
    deprecated: false

  field :container_version, 22, type: :string, json_name: "containerVersion", deprecated: false
end

defmodule Viam.App.Mltraining.V1.CancelTrainingJobRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.mltraining.v1.CancelTrainingJobRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.Mltraining.V1.CancelTrainingJobResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.mltraining.v1.CancelTrainingJobResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Mltraining.V1.DeleteCompletedTrainingJobRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.mltraining.v1.DeleteCompletedTrainingJobRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.Mltraining.V1.DeleteCompletedTrainingJobResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.mltraining.v1.DeleteCompletedTrainingJobResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Mltraining.V1.TrainingJobLogEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.mltraining.v1.TrainingJobLogEntry",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :level, 1, type: :string
  field :time, 2, type: Google.Protobuf.Timestamp
  field :message, 3, type: :string
end

defmodule Viam.App.Mltraining.V1.GetTrainingJobLogsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.mltraining.v1.GetTrainingJobLogsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :page_token, 2, proto3_optional: true, type: :string, json_name: "pageToken"
end

defmodule Viam.App.Mltraining.V1.GetTrainingJobLogsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.mltraining.v1.GetTrainingJobLogsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :logs, 1, repeated: true, type: Viam.App.Mltraining.V1.TrainingJobLogEntry
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Viam.App.Mltraining.V1.ListSupportedContainersRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.mltraining.v1.ListSupportedContainersRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Mltraining.V1.ListSupportedContainersResponse.ContainerMapEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.mltraining.v1.ListSupportedContainersResponse.ContainerMapEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Viam.App.Mltraining.V1.Container
end

defmodule Viam.App.Mltraining.V1.ListSupportedContainersResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.mltraining.v1.ListSupportedContainersResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :container_map, 1,
    repeated: true,
    type: Viam.App.Mltraining.V1.ListSupportedContainersResponse.ContainerMapEntry,
    json_name: "containerMap",
    map: true
end

defmodule Viam.App.Mltraining.V1.Container do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.mltraining.v1.Container",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :uri, 2, type: :string
  field :framework, 3, type: :string
  field :description, 4, type: :string
  field :eol, 5, type: Google.Protobuf.Timestamp
end

defmodule Viam.App.Mltraining.V1.MLTrainingService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.app.mltraining.v1.MLTrainingService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :SubmitTrainingJob,
      Viam.App.Mltraining.V1.SubmitTrainingJobRequest,
      Viam.App.Mltraining.V1.SubmitTrainingJobResponse

  rpc :SubmitCustomTrainingJob,
      Viam.App.Mltraining.V1.SubmitCustomTrainingJobRequest,
      Viam.App.Mltraining.V1.SubmitCustomTrainingJobResponse

  rpc :GetTrainingJob,
      Viam.App.Mltraining.V1.GetTrainingJobRequest,
      Viam.App.Mltraining.V1.GetTrainingJobResponse

  rpc :ListTrainingJobs,
      Viam.App.Mltraining.V1.ListTrainingJobsRequest,
      Viam.App.Mltraining.V1.ListTrainingJobsResponse

  rpc :CancelTrainingJob,
      Viam.App.Mltraining.V1.CancelTrainingJobRequest,
      Viam.App.Mltraining.V1.CancelTrainingJobResponse

  rpc :DeleteCompletedTrainingJob,
      Viam.App.Mltraining.V1.DeleteCompletedTrainingJobRequest,
      Viam.App.Mltraining.V1.DeleteCompletedTrainingJobResponse

  rpc :GetTrainingJobLogs,
      Viam.App.Mltraining.V1.GetTrainingJobLogsRequest,
      Viam.App.Mltraining.V1.GetTrainingJobLogsResponse

  rpc :ListSupportedContainers,
      Viam.App.Mltraining.V1.ListSupportedContainersRequest,
      Viam.App.Mltraining.V1.ListSupportedContainersResponse
end

defmodule Viam.App.Mltraining.V1.MLTrainingService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.App.Mltraining.V1.MLTrainingService.Service
end
