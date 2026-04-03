defmodule Viam.Service.Worldstatestore.V1.TransformChangeType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.service.worldstatestore.v1.TransformChangeType",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :TRANSFORM_CHANGE_TYPE_UNSPECIFIED, 0
  field :TRANSFORM_CHANGE_TYPE_ADDED, 1
  field :TRANSFORM_CHANGE_TYPE_REMOVED, 2
  field :TRANSFORM_CHANGE_TYPE_UPDATED, 3
end

defmodule Viam.Service.Worldstatestore.V1.ListUUIDsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.worldstatestore.v1.ListUUIDsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Worldstatestore.V1.ListUUIDsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.worldstatestore.v1.ListUUIDsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :uuids, 1, repeated: true, type: :bytes
end

defmodule Viam.Service.Worldstatestore.V1.GetTransformRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.worldstatestore.v1.GetTransformRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :uuid, 2, type: :bytes
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Worldstatestore.V1.GetTransformResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.worldstatestore.v1.GetTransformResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :transform, 2, type: Viam.Common.V1.Transform
end

defmodule Viam.Service.Worldstatestore.V1.StreamTransformChangesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.worldstatestore.v1.StreamTransformChangesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Worldstatestore.V1.StreamTransformChangesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.worldstatestore.v1.StreamTransformChangesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :change_type, 1,
    type: Viam.Service.Worldstatestore.V1.TransformChangeType,
    json_name: "changeType",
    enum: true

  field :transform, 2, type: Viam.Common.V1.Transform
  field :updated_fields, 3, type: Google.Protobuf.FieldMask, json_name: "updatedFields"
end

defmodule Viam.Service.Worldstatestore.V1.WorldStateStoreService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.service.worldstatestore.v1.WorldStateStoreService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :ListUUIDs,
      Viam.Service.Worldstatestore.V1.ListUUIDsRequest,
      Viam.Service.Worldstatestore.V1.ListUUIDsResponse

  rpc :GetTransform,
      Viam.Service.Worldstatestore.V1.GetTransformRequest,
      Viam.Service.Worldstatestore.V1.GetTransformResponse

  rpc :StreamTransformChanges,
      Viam.Service.Worldstatestore.V1.StreamTransformChangesRequest,
      stream(Viam.Service.Worldstatestore.V1.StreamTransformChangesResponse)

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse
end

defmodule Viam.Service.Worldstatestore.V1.WorldStateStoreService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Service.Worldstatestore.V1.WorldStateStoreService.Service
end
