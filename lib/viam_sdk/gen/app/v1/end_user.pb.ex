defmodule Viam.App.V1.IsLegalAcceptedRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.IsLegalAcceptedRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.IsLegalAcceptedResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.IsLegalAcceptedResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :accepted_legal, 1, type: :bool, json_name: "acceptedLegal"
  field :ever_accepted_legal, 2, type: :bool, json_name: "everAcceptedLegal"
end

defmodule Viam.App.V1.AcceptLegalRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.AcceptLegalRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.AcceptLegalResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.AcceptLegalResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.RegisterAuthApplicationRequest do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.app.v1.RegisterAuthApplicationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :application_name, 1, type: :string, json_name: "applicationName"
  field :org_id, 2, type: :string, json_name: "orgId"
  field :origin_uris, 3, repeated: true, type: :string, json_name: "originUris"
  field :redirect_uris, 4, repeated: true, type: :string, json_name: "redirectUris"
  field :logout_uri, 5, type: :string, json_name: "logoutUri"
end

defmodule Viam.App.V1.RegisterAuthApplicationResponse do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.app.v1.RegisterAuthApplicationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :application_id, 1, type: :string, json_name: "applicationId"
  field :application_name, 2, type: :string, json_name: "applicationName"
  field :client_secret, 3, type: :string, json_name: "clientSecret"
end

defmodule Viam.App.V1.UpdateAuthApplicationRequest do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.app.v1.UpdateAuthApplicationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
  field :application_id, 2, type: :string, json_name: "applicationId"
  field :application_name, 3, type: :string, json_name: "applicationName"
  field :origin_uris, 4, repeated: true, type: :string, json_name: "originUris"
  field :redirect_uris, 5, repeated: true, type: :string, json_name: "redirectUris"
  field :logout_uri, 6, type: :string, json_name: "logoutUri"
end

defmodule Viam.App.V1.UpdateAuthApplicationResponse do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.app.v1.UpdateAuthApplicationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :application_id, 1, type: :string, json_name: "applicationId"
  field :application_name, 2, type: :string, json_name: "applicationName"
end

defmodule Viam.App.V1.GetAuthApplicationRequest do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.app.v1.GetAuthApplicationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
  field :application_id, 2, type: :string, json_name: "applicationId"
end

defmodule Viam.App.V1.GetAuthApplicationResponse do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.app.v1.GetAuthApplicationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :application_id, 1, type: :string, json_name: "applicationId"
  field :application_name, 2, type: :string, json_name: "applicationName"
  field :client_secret, 3, type: :string, json_name: "clientSecret"
  field :origin_uris, 4, repeated: true, type: :string, json_name: "originUris"
  field :redirect_uris, 5, repeated: true, type: :string, json_name: "redirectUris"
  field :logout_uri, 6, type: :string, json_name: "logoutUri"
end

defmodule Viam.App.V1.EndUserService.Service do
  @moduledoc false

  use GRPC.Service, name: "viam.app.v1.EndUserService", protoc_gen_elixir_version: "0.16.0"

  rpc :IsLegalAccepted, Viam.App.V1.IsLegalAcceptedRequest, Viam.App.V1.IsLegalAcceptedResponse

  rpc :AcceptLegal, Viam.App.V1.AcceptLegalRequest, Viam.App.V1.AcceptLegalResponse

  rpc :RegisterAuthApplication,
      Viam.App.V1.RegisterAuthApplicationRequest,
      Viam.App.V1.RegisterAuthApplicationResponse

  rpc :UpdateAuthApplication,
      Viam.App.V1.UpdateAuthApplicationRequest,
      Viam.App.V1.UpdateAuthApplicationResponse

  rpc :GetAuthApplication,
      Viam.App.V1.GetAuthApplicationRequest,
      Viam.App.V1.GetAuthApplicationResponse
end

defmodule Viam.App.V1.EndUserService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.App.V1.EndUserService.Service
end
