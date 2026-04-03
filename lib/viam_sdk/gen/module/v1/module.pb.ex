defmodule Viam.Module.V1.AddResourceRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.module.v1.AddResourceRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :config, 1, type: Viam.App.V1.ComponentConfig
  field :dependencies, 2, repeated: true, type: :string
end

defmodule Viam.Module.V1.AddResourceResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.module.v1.AddResourceResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Module.V1.ReconfigureResourceRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.module.v1.ReconfigureResourceRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :config, 1, type: Viam.App.V1.ComponentConfig
  field :dependencies, 2, repeated: true, type: :string
end

defmodule Viam.Module.V1.ReconfigureResourceResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.module.v1.ReconfigureResourceResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Module.V1.RemoveResourceRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.module.v1.RemoveResourceRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
end

defmodule Viam.Module.V1.RemoveResourceResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.module.v1.RemoveResourceResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Module.V1.HandlerDefinition do
  @moduledoc false

  use Protobuf,
    full_name: "viam.module.v1.HandlerDefinition",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :subtype, 1, type: Viam.Robot.V1.ResourceRPCSubtype
  field :models, 2, repeated: true, type: :string
end

defmodule Viam.Module.V1.HandlerMap do
  @moduledoc false

  use Protobuf,
    full_name: "viam.module.v1.HandlerMap",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :handlers, 1, repeated: true, type: Viam.Module.V1.HandlerDefinition
end

defmodule Viam.Module.V1.ReadyRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.module.v1.ReadyRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :parent_address, 1, type: :string, json_name: "parentAddress"
  field :webrtc_offer, 2, type: :string, json_name: "webrtcOffer"
end

defmodule Viam.Module.V1.ReadyResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.module.v1.ReadyResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :ready, 1, type: :bool
  field :handlermap, 2, type: Viam.Module.V1.HandlerMap
  field :webrtc_answer, 3, type: :string, json_name: "webrtcAnswer"
end

defmodule Viam.Module.V1.ValidateConfigRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.module.v1.ValidateConfigRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :config, 1, type: Viam.App.V1.ComponentConfig
end

defmodule Viam.Module.V1.ValidateConfigResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.module.v1.ValidateConfigResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :dependencies, 1, repeated: true, type: :string

  field :optional_dependencies, 2,
    repeated: true,
    type: :string,
    json_name: "optionalDependencies"
end

defmodule Viam.Module.V1.ModuleService.Service do
  @moduledoc false

  use GRPC.Service, name: "viam.module.v1.ModuleService", protoc_gen_elixir_version: "0.16.0"

  rpc :AddResource, Viam.Module.V1.AddResourceRequest, Viam.Module.V1.AddResourceResponse

  rpc :ReconfigureResource,
      Viam.Module.V1.ReconfigureResourceRequest,
      Viam.Module.V1.ReconfigureResourceResponse

  rpc :RemoveResource, Viam.Module.V1.RemoveResourceRequest, Viam.Module.V1.RemoveResourceResponse

  rpc :Ready, Viam.Module.V1.ReadyRequest, Viam.Module.V1.ReadyResponse

  rpc :ValidateConfig, Viam.Module.V1.ValidateConfigRequest, Viam.Module.V1.ValidateConfigResponse
end

defmodule Viam.Module.V1.ModuleService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Module.V1.ModuleService.Service
end
