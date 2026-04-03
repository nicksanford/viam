defmodule Viam.App.Mlinference.V1.GetInferenceRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.mlinference.v1.GetInferenceRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :registry_item_id, 1, type: :string, json_name: "registryItemId"
  field :registry_item_version, 2, type: :string, json_name: "registryItemVersion"
  field :binary_id, 3, type: Viam.App.Data.V1.BinaryID, json_name: "binaryId"
  field :binary_data_id, 5, type: :string, json_name: "binaryDataId"
  field :organization_id, 4, type: :string, json_name: "organizationId"
end

defmodule Viam.App.Mlinference.V1.GetInferenceResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.mlinference.v1.GetInferenceResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :output_tensors, 1, type: Viam.Service.Mlmodel.V1.FlatTensors, json_name: "outputTensors"
  field :annotations, 2, type: Viam.App.Data.V1.Annotations
end

defmodule Viam.App.Mlinference.V1.MLInferenceService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.app.mlinference.v1.MLInferenceService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :GetInference,
      Viam.App.Mlinference.V1.GetInferenceRequest,
      Viam.App.Mlinference.V1.GetInferenceResponse
end

defmodule Viam.App.Mlinference.V1.MLInferenceService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.App.Mlinference.V1.MLInferenceService.Service
end
