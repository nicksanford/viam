defmodule Viam.App.Dataset.V1.Dataset do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.dataset.v1.Dataset",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
  field :organization_id, 3, type: :string, json_name: "organizationId"
  field :time_created, 4, type: Google.Protobuf.Timestamp, json_name: "timeCreated"
end

defmodule Viam.App.Dataset.V1.CreateDatasetRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.dataset.v1.CreateDatasetRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :organization_id, 2, type: :string, json_name: "organizationId"
end

defmodule Viam.App.Dataset.V1.CreateDatasetResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.dataset.v1.CreateDatasetResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.Dataset.V1.DeleteDatasetRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.dataset.v1.DeleteDatasetRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.Dataset.V1.DeleteDatasetResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.dataset.v1.DeleteDatasetResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Dataset.V1.RenameDatasetRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.dataset.v1.RenameDatasetRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
end

defmodule Viam.App.Dataset.V1.RenameDatasetResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.dataset.v1.RenameDatasetResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Dataset.V1.ListDatasetsByOrganizationIDRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.dataset.v1.ListDatasetsByOrganizationIDRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
end

defmodule Viam.App.Dataset.V1.ListDatasetsByOrganizationIDResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.dataset.v1.ListDatasetsByOrganizationIDResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :datasets, 1, repeated: true, type: Viam.App.Dataset.V1.Dataset
end

defmodule Viam.App.Dataset.V1.ListDatasetsByIDsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.dataset.v1.ListDatasetsByIDsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :ids, 1, repeated: true, type: :string
end

defmodule Viam.App.Dataset.V1.ListDatasetsByIDsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.dataset.v1.ListDatasetsByIDsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :datasets, 1, repeated: true, type: Viam.App.Dataset.V1.Dataset
end

defmodule Viam.App.Dataset.V1.MergeDatasetsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.dataset.v1.MergeDatasetsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :dataset_ids, 1, repeated: true, type: :string, json_name: "datasetIds"
  field :name, 2, type: :string
  field :organization_id, 3, type: :string, json_name: "organizationId"
end

defmodule Viam.App.Dataset.V1.MergeDatasetsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.dataset.v1.MergeDatasetsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :dataset_id, 1, type: :string, json_name: "datasetId"
end

defmodule Viam.App.Dataset.V1.DatasetService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.app.dataset.v1.DatasetService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :CreateDataset,
      Viam.App.Dataset.V1.CreateDatasetRequest,
      Viam.App.Dataset.V1.CreateDatasetResponse

  rpc :DeleteDataset,
      Viam.App.Dataset.V1.DeleteDatasetRequest,
      Viam.App.Dataset.V1.DeleteDatasetResponse

  rpc :RenameDataset,
      Viam.App.Dataset.V1.RenameDatasetRequest,
      Viam.App.Dataset.V1.RenameDatasetResponse

  rpc :ListDatasetsByOrganizationID,
      Viam.App.Dataset.V1.ListDatasetsByOrganizationIDRequest,
      Viam.App.Dataset.V1.ListDatasetsByOrganizationIDResponse

  rpc :ListDatasetsByIDs,
      Viam.App.Dataset.V1.ListDatasetsByIDsRequest,
      Viam.App.Dataset.V1.ListDatasetsByIDsResponse

  rpc :MergeDatasets,
      Viam.App.Dataset.V1.MergeDatasetsRequest,
      Viam.App.Dataset.V1.MergeDatasetsResponse
end

defmodule Viam.App.Dataset.V1.DatasetService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.App.Dataset.V1.DatasetService.Service
end
