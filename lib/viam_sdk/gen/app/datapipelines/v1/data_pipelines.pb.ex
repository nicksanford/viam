defmodule Viam.App.Datapipelines.V1.DataPipelineRunStatus do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.datapipelines.v1.DataPipelineRunStatus",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :DATA_PIPELINE_RUN_STATUS_UNSPECIFIED, 0
  field :DATA_PIPELINE_RUN_STATUS_SCHEDULED, 1
  field :DATA_PIPELINE_RUN_STATUS_STARTED, 2
  field :DATA_PIPELINE_RUN_STATUS_COMPLETED, 3
  field :DATA_PIPELINE_RUN_STATUS_FAILED, 4
end

defmodule Viam.App.Datapipelines.V1.DataPipeline do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datapipelines.v1.DataPipeline",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :organization_id, 2, type: :string, json_name: "organizationId"
  field :name, 3, type: :string
  field :mql_binary, 4, repeated: true, type: :bytes, json_name: "mqlBinary"
  field :schedule, 5, type: :string
  field :enabled, 6, type: :bool
  field :created_on, 7, type: Google.Protobuf.Timestamp, json_name: "createdOn"
  field :updated_at, 8, type: Google.Protobuf.Timestamp, json_name: "updatedAt"

  field :data_source_type, 9,
    proto3_optional: true,
    type: Viam.App.Data.V1.TabularDataSourceType,
    json_name: "dataSourceType",
    enum: true
end

defmodule Viam.App.Datapipelines.V1.GetDataPipelineRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datapipelines.v1.GetDataPipelineRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.Datapipelines.V1.GetDataPipelineResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datapipelines.v1.GetDataPipelineResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :data_pipeline, 1, type: Viam.App.Datapipelines.V1.DataPipeline, json_name: "dataPipeline"
end

defmodule Viam.App.Datapipelines.V1.ListDataPipelinesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datapipelines.v1.ListDataPipelinesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
end

defmodule Viam.App.Datapipelines.V1.ListDataPipelinesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datapipelines.v1.ListDataPipelinesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :data_pipelines, 1,
    repeated: true,
    type: Viam.App.Datapipelines.V1.DataPipeline,
    json_name: "dataPipelines"
end

defmodule Viam.App.Datapipelines.V1.CreateDataPipelineRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datapipelines.v1.CreateDataPipelineRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :name, 2, type: :string
  field :mql_binary, 3, repeated: true, type: :bytes, json_name: "mqlBinary"
  field :schedule, 4, type: :string
  field :enable_backfill, 5, proto3_optional: true, type: :bool, json_name: "enableBackfill"

  field :data_source_type, 6,
    proto3_optional: true,
    type: Viam.App.Data.V1.TabularDataSourceType,
    json_name: "dataSourceType",
    enum: true
end

defmodule Viam.App.Datapipelines.V1.CreateDataPipelineResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datapipelines.v1.CreateDataPipelineResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.Datapipelines.V1.RenameDataPipelineRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datapipelines.v1.RenameDataPipelineRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
end

defmodule Viam.App.Datapipelines.V1.RenameDataPipelineResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datapipelines.v1.RenameDataPipelineResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Datapipelines.V1.DeleteDataPipelineRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datapipelines.v1.DeleteDataPipelineRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.Datapipelines.V1.DeleteDataPipelineResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datapipelines.v1.DeleteDataPipelineResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Datapipelines.V1.EnableDataPipelineRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datapipelines.v1.EnableDataPipelineRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.Datapipelines.V1.EnableDataPipelineResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datapipelines.v1.EnableDataPipelineResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Datapipelines.V1.DisableDataPipelineRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datapipelines.v1.DisableDataPipelineRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.Datapipelines.V1.DisableDataPipelineResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datapipelines.v1.DisableDataPipelineResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Datapipelines.V1.ListDataPipelineRunsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datapipelines.v1.ListDataPipelineRunsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :page_size, 2, type: :uint32, json_name: "pageSize"
  field :page_token, 3, type: :string, json_name: "pageToken"
end

defmodule Viam.App.Datapipelines.V1.ListDataPipelineRunsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datapipelines.v1.ListDataPipelineRunsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :pipeline_id, 1, type: :string, json_name: "pipelineId"
  field :runs, 2, repeated: true, type: Viam.App.Datapipelines.V1.DataPipelineRun
  field :next_page_token, 3, type: :string, json_name: "nextPageToken"
end

defmodule Viam.App.Datapipelines.V1.DataPipelineRun do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.datapipelines.v1.DataPipelineRun",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :start_time, 2, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 3, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :data_start_time, 4, type: Google.Protobuf.Timestamp, json_name: "dataStartTime"
  field :data_end_time, 5, type: Google.Protobuf.Timestamp, json_name: "dataEndTime"
  field :status, 6, type: Viam.App.Datapipelines.V1.DataPipelineRunStatus, enum: true
  field :error_message, 7, type: :string, json_name: "errorMessage"
end

defmodule Viam.App.Datapipelines.V1.DataPipelinesService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.app.datapipelines.v1.DataPipelinesService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :GetDataPipeline,
      Viam.App.Datapipelines.V1.GetDataPipelineRequest,
      Viam.App.Datapipelines.V1.GetDataPipelineResponse

  rpc :ListDataPipelines,
      Viam.App.Datapipelines.V1.ListDataPipelinesRequest,
      Viam.App.Datapipelines.V1.ListDataPipelinesResponse

  rpc :CreateDataPipeline,
      Viam.App.Datapipelines.V1.CreateDataPipelineRequest,
      Viam.App.Datapipelines.V1.CreateDataPipelineResponse

  rpc :RenameDataPipeline,
      Viam.App.Datapipelines.V1.RenameDataPipelineRequest,
      Viam.App.Datapipelines.V1.RenameDataPipelineResponse

  rpc :DeleteDataPipeline,
      Viam.App.Datapipelines.V1.DeleteDataPipelineRequest,
      Viam.App.Datapipelines.V1.DeleteDataPipelineResponse

  rpc :EnableDataPipeline,
      Viam.App.Datapipelines.V1.EnableDataPipelineRequest,
      Viam.App.Datapipelines.V1.EnableDataPipelineResponse

  rpc :DisableDataPipeline,
      Viam.App.Datapipelines.V1.DisableDataPipelineRequest,
      Viam.App.Datapipelines.V1.DisableDataPipelineResponse

  rpc :ListDataPipelineRuns,
      Viam.App.Datapipelines.V1.ListDataPipelineRunsRequest,
      Viam.App.Datapipelines.V1.ListDataPipelineRunsResponse
end

defmodule Viam.App.Datapipelines.V1.DataPipelinesService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.App.Datapipelines.V1.DataPipelinesService.Service
end
