defmodule Viam.App.V1.OnlineState do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.v1.OnlineState",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :ONLINE_STATE_UNSPECIFIED, 0
  field :ONLINE_STATE_ONLINE, 1
  field :ONLINE_STATE_OFFLINE, 2
  field :ONLINE_STATE_AWAITING_SETUP, 3
end

defmodule Viam.App.V1.AuthenticationType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.v1.AuthenticationType",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :AUTHENTICATION_TYPE_UNSPECIFIED, 0
  field :AUTHENTICATION_TYPE_WEB_OAUTH, 1
  field :AUTHENTICATION_TYPE_API_KEY, 2
  field :AUTHENTICATION_TYPE_ROBOT_PART_SECRET, 3
  field :AUTHENTICATION_TYPE_LOCATION_SECRET, 4
end

defmodule Viam.App.V1.FragmentVisibility do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.v1.FragmentVisibility",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :FRAGMENT_VISIBILITY_UNSPECIFIED, 0
  field :FRAGMENT_VISIBILITY_PRIVATE, 1
  field :FRAGMENT_VISIBILITY_PUBLIC, 2
  field :FRAGMENT_VISIBILITY_PUBLIC_UNLISTED, 3
end

defmodule Viam.App.V1.FragmentErrorType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.v1.FragmentErrorType",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :FRAGMENT_ERROR_TYPE_UNSPECIFIED, 0
  field :FRAGMENT_ERROR_TYPE_NO_ACCESS, 1
  field :FRAGMENT_ERROR_TYPE_NESTING_LIMIT_EXCEEDED, 2
  field :FRAGMENT_ERROR_TYPE_CHILD_ID_INVALID, 3
  field :FRAGMENT_ERROR_TYPE_CYCLE_DETECTED, 4
end

defmodule Viam.App.V1.ModuleSourceType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.v1.ModuleSourceType",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :MODULE_SOURCE_TYPE_UNSPECIFIED, 0
  field :MODULE_SOURCE_TYPE_EXTERNAL, 1
  field :MODULE_SOURCE_TYPE_VIAM_HOSTED, 2
end

defmodule Viam.App.V1.ModuleLanguage do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.v1.ModuleLanguage",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :MODULE_LANGUAGE_UNSPECIFIED, 0
  field :MODULE_LANGUAGE_GOLANG, 1
  field :MODULE_LANGUAGE_PYTHON, 2
  field :MODULE_LANGUAGE_CPP, 3
end

defmodule Viam.App.V1.RegistryItemStatus do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.v1.RegistryItemStatus",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :REGISTRY_ITEM_STATUS_UNSPECIFIED, 0
  field :REGISTRY_ITEM_STATUS_PUBLISHED, 1
  field :REGISTRY_ITEM_STATUS_IN_DEVELOPMENT, 2
end

defmodule Viam.App.V1.Visibility do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.v1.Visibility",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :VISIBILITY_UNSPECIFIED, 0
  field :VISIBILITY_PRIVATE, 1
  field :VISIBILITY_PUBLIC, 2
  field :VISIBILITY_PUBLIC_UNLISTED, 3
end

defmodule Viam.App.V1.AppType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.v1.AppType",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :APP_TYPE_UNSPECIFIED, 0
  field :APP_TYPE_SINGLE_MACHINE, 1
  field :APP_TYPE_MULTI_MACHINE, 2
end

defmodule Viam.App.V1.ClientAuthentication do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.v1.ClientAuthentication",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :CLIENT_AUTHENTICATION_UNSPECIFIED, 0
  field :CLIENT_AUTHENTICATION_REQUIRED, 1
  field :CLIENT_AUTHENTICATION_NOT_REQUIRED, 2
  field :CLIENT_AUTHENTICATION_NOT_REQUIRED_WHEN_USING_PKCE, 3
end

defmodule Viam.App.V1.PKCE do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.v1.PKCE",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :PKCE_UNSPECIFIED, 0
  field :PKCE_REQUIRED, 1
  field :PKCE_NOT_REQUIRED, 2
  field :PKCE_NOT_REQUIRED_WHEN_USING_CLIENT_AUTHENTICATION, 3
end

defmodule Viam.App.V1.URLValidation do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.v1.URLValidation",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :URL_VALIDATION_UNSPECIFIED, 0
  field :URL_VALIDATION_EXACT_MATCH, 1
  field :URL_VALIDATION_ALLOW_WILDCARDS, 2
end

defmodule Viam.App.V1.EnabledGrant do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.v1.EnabledGrant",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :ENABLED_GRANT_UNSPECIFIED, 0
  field :ENABLED_GRANT_AUTHORIZATION_CODE, 1
  field :ENABLED_GRANT_IMPLICIT, 2
  field :ENABLED_GRANT_PASSWORD, 3
  field :ENABLED_GRANT_REFRESH_TOKEN, 4
  field :ENABLED_GRANT_DEVICE_CODE, 5
end

defmodule Viam.App.V1.SharedSecret.State do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.v1.SharedSecret.State",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :STATE_UNSPECIFIED, 0
  field :STATE_ENABLED, 1
  field :STATE_DISABLED, 2
end

defmodule Viam.App.V1.Robot do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.Robot",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :name, 2, type: :string, deprecated: false
  field :location, 3, type: :string, deprecated: false

  field :last_access, 4,
    type: Google.Protobuf.Timestamp,
    json_name: "lastAccess",
    deprecated: false

  field :created_on, 5, type: Google.Protobuf.Timestamp, json_name: "createdOn", deprecated: false

  field :online_state, 6,
    type: Viam.App.V1.OnlineState,
    json_name: "onlineState",
    enum: true,
    deprecated: false

  field :seconds_since_online, 7, type: :int64, json_name: "secondsSinceOnline", deprecated: false
end

defmodule Viam.App.V1.RobotPart do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.RobotPart",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :name, 2, type: :string, deprecated: false
  field :dns_name, 10, type: :string, json_name: "dnsName", deprecated: false
  field :secret, 3, type: :string, deprecated: false
  field :robot, 4, type: :string, deprecated: false
  field :location_id, 12, type: :string, json_name: "locationId", deprecated: false

  field :robot_config, 5,
    type: Google.Protobuf.Struct,
    json_name: "robotConfig",
    deprecated: false

  field :last_access, 6,
    type: Google.Protobuf.Timestamp,
    json_name: "lastAccess",
    deprecated: false

  field :user_supplied_info, 7,
    type: Google.Protobuf.Struct,
    json_name: "userSuppliedInfo",
    deprecated: false

  field :main_part, 8, type: :bool, json_name: "mainPart", deprecated: false
  field :fqdn, 9, type: :string
  field :local_fqdn, 11, type: :string, json_name: "localFqdn"

  field :created_on, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "createdOn",
    deprecated: false

  field :secrets, 14, repeated: true, type: Viam.App.V1.SharedSecret, deprecated: false

  field :last_updated, 15,
    type: Google.Protobuf.Timestamp,
    json_name: "lastUpdated",
    deprecated: false

  field :online_state, 16,
    type: Viam.App.V1.OnlineState,
    json_name: "onlineState",
    enum: true,
    deprecated: false

  field :seconds_since_online, 17,
    type: :int64,
    json_name: "secondsSinceOnline",
    deprecated: false

  field :robot_config_json, 18,
    proto3_optional: true,
    type: :string,
    json_name: "robotConfigJson",
    deprecated: false
end

defmodule Viam.App.V1.RobotPartHistoryEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.RobotPartHistoryEntry",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :part, 1, type: :string, deprecated: false
  field :robot, 2, type: :string, deprecated: false
  field :when, 3, type: Google.Protobuf.Timestamp, deprecated: false
  field :old, 4, type: Viam.App.V1.RobotPart, deprecated: false

  field :edited_by, 5,
    type: Viam.App.V1.AuthenticatorInfo,
    json_name: "editedBy",
    deprecated: false
end

defmodule Viam.App.V1.AuthenticatorInfo do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.AuthenticatorInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :type, 1, type: Viam.App.V1.AuthenticationType, enum: true
  field :value, 2, type: :string
  field :is_deactivated, 3, type: :bool, json_name: "isDeactivated"
end

defmodule Viam.App.V1.ListOrganizationsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListOrganizationsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.Organization do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.Organization",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
  field :created_on, 3, type: Google.Protobuf.Timestamp, json_name: "createdOn"
  field :public_namespace, 4, type: :string, json_name: "publicNamespace"
  field :default_region, 5, type: :string, json_name: "defaultRegion"
  field :cid, 6, proto3_optional: true, type: :string

  field :default_fragments, 7,
    proto3_optional: true,
    type: Viam.App.V1.FragmentImportList,
    json_name: "defaultFragments"
end

defmodule Viam.App.V1.OrganizationMember do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.OrganizationMember",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :user_id, 1, type: :string, json_name: "userId"
  field :emails, 2, repeated: true, type: :string
  field :date_added, 3, type: Google.Protobuf.Timestamp, json_name: "dateAdded"

  field :last_login, 4,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "lastLogin"

  field :last_access, 5,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "lastAccess"
end

defmodule Viam.App.V1.ListOrganizationsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListOrganizationsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organizations, 1, repeated: true, type: Viam.App.V1.Organization
end

defmodule Viam.App.V1.OrganizationInvite do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.OrganizationInvite",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :email, 2, type: :string
  field :created_on, 3, type: Google.Protobuf.Timestamp, json_name: "createdOn"
  field :authorizations, 4, repeated: true, type: Viam.App.V1.Authorization
end

defmodule Viam.App.V1.CreateOrganizationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CreateOrganizationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
end

defmodule Viam.App.V1.CreateOrganizationResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CreateOrganizationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization, 1, type: Viam.App.V1.Organization
end

defmodule Viam.App.V1.GetOrganizationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetOrganizationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
end

defmodule Viam.App.V1.GetOrganizationResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetOrganizationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization, 1, type: Viam.App.V1.Organization
end

defmodule Viam.App.V1.GetOrganizationNamespaceAvailabilityRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetOrganizationNamespaceAvailabilityRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :public_namespace, 1, type: :string, json_name: "publicNamespace"
  field :organization_id, 2, type: :string, json_name: "organizationId"
end

defmodule Viam.App.V1.GetOrganizationNamespaceAvailabilityResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetOrganizationNamespaceAvailabilityResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :available, 1, type: :bool
end

defmodule Viam.App.V1.FragmentImportList do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.FragmentImportList",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :fragments, 1, repeated: true, type: Viam.App.V1.FragmentImport
end

defmodule Viam.App.V1.UpdateOrganizationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateOrganizationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :name, 2, proto3_optional: true, type: :string
  field :public_namespace, 3, proto3_optional: true, type: :string, json_name: "publicNamespace"
  field :region, 4, proto3_optional: true, type: :string
  field :cid, 5, proto3_optional: true, type: :string

  field :default_fragments, 6,
    proto3_optional: true,
    type: Viam.App.V1.FragmentImportList,
    json_name: "defaultFragments"
end

defmodule Viam.App.V1.UpdateOrganizationResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateOrganizationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization, 1, type: Viam.App.V1.Organization
end

defmodule Viam.App.V1.UpdateOrganizationNamespaceRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateOrganizationNamespaceRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :new_public_namespace, 2, type: :string, json_name: "newPublicNamespace"
end

defmodule Viam.App.V1.UpdateOrganizationNamespaceResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateOrganizationNamespaceResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization, 1, type: Viam.App.V1.Organization
end

defmodule Viam.App.V1.DeleteOrganizationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteOrganizationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
end

defmodule Viam.App.V1.DeleteOrganizationResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteOrganizationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.GetOrganizationMetadataRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetOrganizationMetadataRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
end

defmodule Viam.App.V1.GetOrganizationMetadataResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetOrganizationMetadataResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :data, 1, type: Google.Protobuf.Struct
end

defmodule Viam.App.V1.UpdateOrganizationMetadataRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateOrganizationMetadataRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :data, 2, type: Google.Protobuf.Struct
end

defmodule Viam.App.V1.UpdateOrganizationMetadataResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateOrganizationMetadataResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.ListOrganizationMembersRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListOrganizationMembersRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
end

defmodule Viam.App.V1.ListOrganizationMembersResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListOrganizationMembersResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :members, 2, repeated: true, type: Viam.App.V1.OrganizationMember
  field :invites, 3, repeated: true, type: Viam.App.V1.OrganizationInvite
end

defmodule Viam.App.V1.CreateOrganizationInviteRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CreateOrganizationInviteRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :email, 2, type: :string
  field :authorizations, 3, repeated: true, type: Viam.App.V1.Authorization
  field :send_email_invite, 4, proto3_optional: true, type: :bool, json_name: "sendEmailInvite"
end

defmodule Viam.App.V1.CreateOrganizationInviteResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CreateOrganizationInviteResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :invite, 1, type: Viam.App.V1.OrganizationInvite
end

defmodule Viam.App.V1.UpdateOrganizationInviteAuthorizationsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateOrganizationInviteAuthorizationsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :email, 2, type: :string

  field :add_authorizations, 3,
    repeated: true,
    type: Viam.App.V1.Authorization,
    json_name: "addAuthorizations"

  field :remove_authorizations, 4,
    repeated: true,
    type: Viam.App.V1.Authorization,
    json_name: "removeAuthorizations"
end

defmodule Viam.App.V1.UpdateOrganizationInviteAuthorizationsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateOrganizationInviteAuthorizationsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :invite, 1, type: Viam.App.V1.OrganizationInvite
end

defmodule Viam.App.V1.DeleteOrganizationInviteRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteOrganizationInviteRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :email, 2, type: :string
end

defmodule Viam.App.V1.DeleteOrganizationInviteResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteOrganizationInviteResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.ResendOrganizationInviteRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ResendOrganizationInviteRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :email, 2, type: :string
  field :send_email_invite, 3, proto3_optional: true, type: :bool, json_name: "sendEmailInvite"
end

defmodule Viam.App.V1.ResendOrganizationInviteResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ResendOrganizationInviteResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :invite, 1, type: Viam.App.V1.OrganizationInvite
end

defmodule Viam.App.V1.DeleteOrganizationMemberRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteOrganizationMemberRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :user_id, 2, type: :string, json_name: "userId"
end

defmodule Viam.App.V1.DeleteOrganizationMemberResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteOrganizationMemberResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.BillingAddress do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.BillingAddress",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :address_line_1, 1, type: :string, json_name: "addressLine1"
  field :address_line_2, 2, proto3_optional: true, type: :string, json_name: "addressLine2"
  field :city, 3, type: :string
  field :state, 4, type: :string
  field :zipcode, 5, type: :string
  field :country, 6, type: :string
end

defmodule Viam.App.V1.EnableBillingServiceRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.EnableBillingServiceRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
  field :billing_address, 2, type: Viam.App.V1.BillingAddress, json_name: "billingAddress"
end

defmodule Viam.App.V1.EnableBillingServiceResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.EnableBillingServiceResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.UpdateBillingServiceRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateBillingServiceRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
  field :billing_address, 2, type: Viam.App.V1.BillingAddress, json_name: "billingAddress"
end

defmodule Viam.App.V1.UpdateBillingServiceResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateBillingServiceResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.GetBillingServiceConfigRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetBillingServiceConfigRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
end

defmodule Viam.App.V1.GetBillingServiceConfigResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetBillingServiceConfigResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :billing_address, 1, type: Viam.App.V1.BillingAddress, json_name: "billingAddress"
  field :support_email, 2, type: :string, json_name: "supportEmail"
  field :logo_url, 3, type: :string, json_name: "logoUrl"
  field :billing_dashboard_url, 4, type: :string, json_name: "billingDashboardUrl"
end

defmodule Viam.App.V1.DisableBillingServiceRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DisableBillingServiceRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
end

defmodule Viam.App.V1.DisableBillingServiceResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DisableBillingServiceResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.OrganizationSetSupportEmailRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.OrganizationSetSupportEmailRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
  field :email, 2, type: :string
end

defmodule Viam.App.V1.OrganizationSetSupportEmailResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.OrganizationSetSupportEmailResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.OrganizationGetSupportEmailRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.OrganizationGetSupportEmailRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
end

defmodule Viam.App.V1.OrganizationGetSupportEmailResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.OrganizationGetSupportEmailResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :email, 1, type: :string
end

defmodule Viam.App.V1.OrganizationIdentity do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.OrganizationIdentity",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
end

defmodule Viam.App.V1.LocationOrganization do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.LocationOrganization",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :primary, 2, type: :bool
end

defmodule Viam.App.V1.LocationAuth do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.LocationAuth",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :secret, 1, type: :string, deprecated: true
  field :location_id, 2, type: :string, json_name: "locationId"
  field :secrets, 3, repeated: true, type: Viam.App.V1.SharedSecret
end

defmodule Viam.App.V1.StorageConfig do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.StorageConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :region, 1, type: :string
end

defmodule Viam.App.V1.Location do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.Location",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
  field :parent_location_id, 4, type: :string, json_name: "parentLocationId"
  field :auth, 5, type: Viam.App.V1.LocationAuth
  field :organizations, 6, repeated: true, type: Viam.App.V1.LocationOrganization
  field :created_on, 3, type: Google.Protobuf.Timestamp, json_name: "createdOn"
  field :robot_count, 7, type: :int32, json_name: "robotCount"
  field :config, 8, type: Viam.App.V1.StorageConfig

  field :primary_org_identity, 9,
    proto3_optional: true,
    type: Viam.App.V1.OrganizationIdentity,
    json_name: "primaryOrgIdentity"
end

defmodule Viam.App.V1.SharedSecret do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.SharedSecret",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :secret, 2, type: :string, deprecated: false
  field :created_on, 3, type: Google.Protobuf.Timestamp, json_name: "createdOn", deprecated: false
  field :state, 4, type: Viam.App.V1.SharedSecret.State, enum: true, deprecated: false
end

defmodule Viam.App.V1.CreateLocationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CreateLocationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :name, 2, type: :string

  field :parent_location_id, 3,
    proto3_optional: true,
    type: :string,
    json_name: "parentLocationId"
end

defmodule Viam.App.V1.CreateLocationResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CreateLocationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :location, 1, type: Viam.App.V1.Location
end

defmodule Viam.App.V1.GetLocationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetLocationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :location_id, 1, type: :string, json_name: "locationId"
end

defmodule Viam.App.V1.GetLocationResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetLocationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :location, 1, type: Viam.App.V1.Location
end

defmodule Viam.App.V1.UpdateLocationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateLocationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :location_id, 1, type: :string, json_name: "locationId"
  field :name, 2, proto3_optional: true, type: :string

  field :parent_location_id, 3,
    proto3_optional: true,
    type: :string,
    json_name: "parentLocationId"

  field :region, 4, proto3_optional: true, type: :string
end

defmodule Viam.App.V1.UpdateLocationResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateLocationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :location, 1, type: Viam.App.V1.Location
end

defmodule Viam.App.V1.DeleteLocationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteLocationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :location_id, 1, type: :string, json_name: "locationId"
end

defmodule Viam.App.V1.DeleteLocationResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteLocationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.GetLocationMetadataRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetLocationMetadataRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :location_id, 1, type: :string, json_name: "locationId"
end

defmodule Viam.App.V1.GetLocationMetadataResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetLocationMetadataResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :data, 1, type: Google.Protobuf.Struct
end

defmodule Viam.App.V1.UpdateLocationMetadataRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateLocationMetadataRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :location_id, 1, type: :string, json_name: "locationId"
  field :data, 2, type: Google.Protobuf.Struct
end

defmodule Viam.App.V1.UpdateLocationMetadataResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateLocationMetadataResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.GetOrganizationsWithAccessToLocationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetOrganizationsWithAccessToLocationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :location_id, 1, type: :string, json_name: "locationId"
end

defmodule Viam.App.V1.GetOrganizationsWithAccessToLocationResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetOrganizationsWithAccessToLocationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_identities, 1,
    repeated: true,
    type: Viam.App.V1.OrganizationIdentity,
    json_name: "organizationIdentities"
end

defmodule Viam.App.V1.ListLocationsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListLocationsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
end

defmodule Viam.App.V1.ShareLocationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ShareLocationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :location_id, 1, type: :string, json_name: "locationId"
  field :organization_id, 2, type: :string, json_name: "organizationId"
end

defmodule Viam.App.V1.ShareLocationResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ShareLocationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.UnshareLocationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UnshareLocationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :location_id, 1, type: :string, json_name: "locationId"
  field :organization_id, 2, type: :string, json_name: "organizationId"
end

defmodule Viam.App.V1.UnshareLocationResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UnshareLocationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.ListLocationsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListLocationsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :locations, 1, repeated: true, type: Viam.App.V1.Location
end

defmodule Viam.App.V1.CreateLocationSecretRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CreateLocationSecretRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :location_id, 1, type: :string, json_name: "locationId"
end

defmodule Viam.App.V1.CreateLocationSecretResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CreateLocationSecretResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :auth, 1, type: Viam.App.V1.LocationAuth
end

defmodule Viam.App.V1.DeleteLocationSecretRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteLocationSecretRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :location_id, 1, type: :string, json_name: "locationId"
  field :secret_id, 2, type: :string, json_name: "secretId"
end

defmodule Viam.App.V1.DeleteLocationSecretResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteLocationSecretResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.LocationAuthRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.LocationAuthRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :location_id, 1, type: :string, json_name: "locationId"
end

defmodule Viam.App.V1.LocationAuthResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.LocationAuthResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :auth, 1, type: Viam.App.V1.LocationAuth
end

defmodule Viam.App.V1.GetRobotRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetRobotRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.V1.GetRoverRentalRobotsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetRoverRentalRobotsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
end

defmodule Viam.App.V1.RoverRentalRobot do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.RoverRentalRobot",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :robot_id, 1, type: :string, json_name: "robotId"
  field :location_id, 2, type: :string, json_name: "locationId"
  field :robot_name, 3, type: :string, json_name: "robotName"
  field :robot_main_part_id, 4, type: :string, json_name: "robotMainPartId"
end

defmodule Viam.App.V1.GetRoverRentalRobotsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetRoverRentalRobotsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :robots, 1, repeated: true, type: Viam.App.V1.RoverRentalRobot
end

defmodule Viam.App.V1.GetRobotResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetRobotResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :robot, 1, type: Viam.App.V1.Robot
end

defmodule Viam.App.V1.GetRobotPartsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetRobotPartsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :robot_id, 1, type: :string, json_name: "robotId"
end

defmodule Viam.App.V1.GetRobotPartsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetRobotPartsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :parts, 1, repeated: true, type: Viam.App.V1.RobotPart
end

defmodule Viam.App.V1.GetRobotPartRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetRobotPartRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.V1.GetRobotPartResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetRobotPartResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :part, 1, type: Viam.App.V1.RobotPart
  field :config_json, 2, type: :string, json_name: "configJson"
end

defmodule Viam.App.V1.GetRobotPartByNameAndLocationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetRobotPartByNameAndLocationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :location_id, 2, type: :string, json_name: "locationId"
end

defmodule Viam.App.V1.GetRobotPartByNameAndLocationResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetRobotPartByNameAndLocationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :part, 1, type: Viam.App.V1.RobotPart
end

defmodule Viam.App.V1.GetRobotPartLogsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetRobotPartLogsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :errors_only, 2, type: :bool, json_name: "errorsOnly", deprecated: true
  field :filter, 3, proto3_optional: true, type: :string
  field :page_token, 4, proto3_optional: true, type: :string, json_name: "pageToken"
  field :levels, 5, repeated: true, type: :string
  field :start, 6, proto3_optional: true, type: Google.Protobuf.Timestamp
  field :end, 7, proto3_optional: true, type: Google.Protobuf.Timestamp
  field :limit, 8, proto3_optional: true, type: :int64
  field :source, 9, proto3_optional: true, type: :string
  field :user_facing_only, 10, proto3_optional: true, type: :bool, json_name: "userFacingOnly"
end

defmodule Viam.App.V1.GetRobotPartLogsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetRobotPartLogsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :logs, 1, repeated: true, type: Viam.Common.V1.LogEntry
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Viam.App.V1.TailRobotPartLogsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.TailRobotPartLogsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :errors_only, 2, type: :bool, json_name: "errorsOnly"
  field :filter, 3, proto3_optional: true, type: :string
end

defmodule Viam.App.V1.TailRobotPartLogsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.TailRobotPartLogsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :logs, 1, repeated: true, type: Viam.Common.V1.LogEntry
end

defmodule Viam.App.V1.GetRobotPartHistoryRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetRobotPartHistoryRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.V1.GetRobotPartHistoryResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetRobotPartHistoryResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :history, 1, repeated: true, type: Viam.App.V1.RobotPartHistoryEntry
end

defmodule Viam.App.V1.UpdateRobotPartRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateRobotPartRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
  field :robot_config, 3, type: Google.Protobuf.Struct, json_name: "robotConfig"

  field :last_known_update, 4,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "lastKnownUpdate"

  field :robot_config_json, 5, proto3_optional: true, type: :string, json_name: "robotConfigJson"
end

defmodule Viam.App.V1.UpdateRobotPartResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateRobotPartResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :part, 1, type: Viam.App.V1.RobotPart
end

defmodule Viam.App.V1.NewRobotPartRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.NewRobotPartRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :robot_id, 1, type: :string, json_name: "robotId"
  field :part_name, 2, type: :string, json_name: "partName"
end

defmodule Viam.App.V1.NewRobotPartResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.NewRobotPartResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :part_id, 1, type: :string, json_name: "partId"
end

defmodule Viam.App.V1.DeleteRobotPartRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteRobotPartRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :part_id, 1, type: :string, json_name: "partId"
end

defmodule Viam.App.V1.GetRobotPartMetadataRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetRobotPartMetadataRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.V1.GetRobotPartMetadataResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetRobotPartMetadataResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :data, 1, type: Google.Protobuf.Struct
end

defmodule Viam.App.V1.UpdateRobotPartMetadataRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateRobotPartMetadataRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :data, 2, type: Google.Protobuf.Struct
end

defmodule Viam.App.V1.UpdateRobotPartMetadataResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateRobotPartMetadataResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.GetRobotAPIKeysRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetRobotAPIKeysRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :robot_id, 1, type: :string, json_name: "robotId"
end

defmodule Viam.App.V1.APIKey do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.APIKey",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :key, 2, type: :string
  field :name, 3, type: :string
  field :created_on, 4, type: Google.Protobuf.Timestamp, json_name: "createdOn"
end

defmodule Viam.App.V1.GetRobotAPIKeysResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetRobotAPIKeysResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :api_keys, 1,
    repeated: true,
    type: Viam.App.V1.APIKeyWithAuthorizations,
    json_name: "apiKeys"
end

defmodule Viam.App.V1.DeleteRobotPartResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteRobotPartResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.Fragment do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.Fragment",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string, deprecated: false
  field :name, 2, type: :string, deprecated: false
  field :fragment, 3, type: Google.Protobuf.Struct, deprecated: false
  field :organization_owner, 4, type: :string, json_name: "organizationOwner", deprecated: false
  field :public, 5, type: :bool, deprecated: false
  field :created_on, 6, type: Google.Protobuf.Timestamp, json_name: "createdOn", deprecated: false
  field :organization_name, 7, type: :string, json_name: "organizationName"
  field :robot_part_count, 9, type: :int32, json_name: "robotPartCount"
  field :organization_count, 10, type: :int32, json_name: "organizationCount"
  field :only_used_by_owner, 11, type: :bool, json_name: "onlyUsedByOwner"
  field :visibility, 12, type: Viam.App.V1.FragmentVisibility, enum: true

  field :last_updated, 13,
    type: Google.Protobuf.Timestamp,
    json_name: "lastUpdated",
    deprecated: false

  field :revision, 14, type: :string
end

defmodule Viam.App.V1.FragmentHistoryEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.FragmentHistoryEntry",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :fragment, 1, type: :string, deprecated: false
  field :edited_on, 2, type: Google.Protobuf.Timestamp, json_name: "editedOn", deprecated: false
  field :old, 3, type: Viam.App.V1.Fragment, deprecated: false

  field :edited_by, 4,
    type: Viam.App.V1.AuthenticatorInfo,
    json_name: "editedBy",
    deprecated: false

  field :revision, 5, type: :string, deprecated: false
  field :config, 6, type: Google.Protobuf.Struct, deprecated: false
end

defmodule Viam.App.V1.FragmentRevision do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.FragmentRevision",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :revision, 1, type: :string
  field :created_at, 2, type: Google.Protobuf.Timestamp, json_name: "createdAt"
end

defmodule Viam.App.V1.FragmentTag do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.FragmentTag",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :tag, 1, type: :string
  field :revision, 2, type: :string
end

defmodule Viam.App.V1.FragmentError do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.FragmentError",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :error_type, 1, type: Viam.App.V1.FragmentErrorType, json_name: "errorType", enum: true
  field :fragment_id, 2, type: :string, json_name: "fragmentId"
  field :detail, 3, type: :string
end

defmodule Viam.App.V1.FragmentUsage do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.FragmentUsage",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :fragment_id, 1, type: :string, json_name: "fragmentId"
  field :organizations, 2, type: :int32
  field :machines, 3, type: :int32
  field :machines_in_current_org, 4, type: :int32, json_name: "machinesInCurrentOrg"
  field :version, 5, proto3_optional: true, type: :string
end

defmodule Viam.App.V1.FragmentImport.VariablesEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.FragmentImport.VariablesEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Viam.App.V1.FragmentImport do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.FragmentImport",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :fragment_id, 1, type: :string, json_name: "fragmentId"
  field :version, 2, type: :string
  field :prefix, 3, proto3_optional: true, type: :string
  field :variables, 4, repeated: true, type: Viam.App.V1.FragmentImport.VariablesEntry, map: true
end

defmodule Viam.App.V1.ResolvedFragment do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ResolvedFragment",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :fragment_id, 1, type: :string, json_name: "fragmentId"
  field :resolved_config, 2, type: Google.Protobuf.Struct, json_name: "resolvedConfig"
  field :error, 3, type: Viam.App.V1.FragmentError
  field :revision, 4, type: :string
end

defmodule Viam.App.V1.ListFragmentsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListFragmentsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :show_public, 2, type: :bool, json_name: "showPublic"

  field :fragment_visibility, 3,
    repeated: true,
    type: Viam.App.V1.FragmentVisibility,
    json_name: "fragmentVisibility",
    enum: true
end

defmodule Viam.App.V1.ListFragmentsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListFragmentsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :fragments, 1, repeated: true, type: Viam.App.V1.Fragment

  field :fragment_usages, 2,
    repeated: true,
    type: Viam.App.V1.FragmentUsage,
    json_name: "fragmentUsages"
end

defmodule Viam.App.V1.GetFragmentRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetFragmentRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :current_organization_id, 2, type: :string, json_name: "currentOrganizationId"
  field :version, 3, proto3_optional: true, type: :string
end

defmodule Viam.App.V1.GetFragmentResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetFragmentResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :fragment, 1, type: Viam.App.V1.Fragment
  field :fragment_usage, 2, type: Viam.App.V1.FragmentUsage, json_name: "fragmentUsage"
  field :revisions, 3, repeated: true, type: Viam.App.V1.FragmentRevision
  field :tags, 4, repeated: true, type: Viam.App.V1.FragmentTag
end

defmodule Viam.App.V1.CreateFragmentRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CreateFragmentRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :config, 2, type: Google.Protobuf.Struct
  field :organization_id, 3, type: :string, json_name: "organizationId"
  field :visibility, 4, proto3_optional: true, type: Viam.App.V1.FragmentVisibility, enum: true
end

defmodule Viam.App.V1.CreateFragmentResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CreateFragmentResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :fragment, 1, type: Viam.App.V1.Fragment
end

defmodule Viam.App.V1.UpdateFragmentRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateFragmentRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
  field :config, 3, type: Google.Protobuf.Struct
  field :public, 4, proto3_optional: true, type: :bool
  field :visibility, 5, proto3_optional: true, type: Viam.App.V1.FragmentVisibility, enum: true

  field :last_known_update, 6,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "lastKnownUpdate"
end

defmodule Viam.App.V1.UpdateFragmentResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateFragmentResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :fragment, 1, type: Viam.App.V1.Fragment
end

defmodule Viam.App.V1.DeleteFragmentRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteFragmentRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.V1.DeleteFragmentResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteFragmentResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.GetFragmentHistoryRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetFragmentHistoryRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :page_token, 2, proto3_optional: true, type: :string, json_name: "pageToken"
  field :page_limit, 3, proto3_optional: true, type: :int64, json_name: "pageLimit"
end

defmodule Viam.App.V1.GetFragmentHistoryResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetFragmentHistoryResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :history, 1, repeated: true, type: Viam.App.V1.FragmentHistoryEntry
  field :next_page_token, 2, type: :string, json_name: "nextPageToken"
end

defmodule Viam.App.V1.GetFragmentUsageRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetFragmentUsageRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :fragment_id, 1, type: :string, json_name: "fragmentId"
end

defmodule Viam.App.V1.GetFragmentUsageResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetFragmentUsageResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :version_usages, 1,
    repeated: true,
    type: Viam.App.V1.FragmentUsage,
    json_name: "versionUsages"
end

defmodule Viam.App.V1.SetFragmentTagRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.SetFragmentTagRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :fragment_id, 1, type: :string, json_name: "fragmentId"
  field :tag, 2, type: :string
  field :revision, 3, type: :string
end

defmodule Viam.App.V1.SetFragmentTagResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.SetFragmentTagResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :tags, 1, repeated: true, type: Viam.App.V1.FragmentTag
end

defmodule Viam.App.V1.DeleteFragmentTagRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteFragmentTagRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :fragment_id, 1, type: :string, json_name: "fragmentId"
  field :tag, 2, type: :string
end

defmodule Viam.App.V1.DeleteFragmentTagResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteFragmentTagResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :tags, 1, repeated: true, type: Viam.App.V1.FragmentTag
end

defmodule Viam.App.V1.ListRobotsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListRobotsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :location_id, 1, type: :string, json_name: "locationId"
end

defmodule Viam.App.V1.ListRobotsForLocationsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListRobotsForLocationsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :location_ids, 1, repeated: true, type: :string, json_name: "locationIds"
end

defmodule Viam.App.V1.ListRobotsForOrgRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListRobotsForOrgRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
end

defmodule Viam.App.V1.AdditionalFragment do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.AdditionalFragment",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :fragment_id, 1, type: :string, json_name: "fragmentId"
  field :version, 2, proto3_optional: true, type: :string
end

defmodule Viam.App.V1.ListNestedFragmentsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListNestedFragmentsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :fragment_id, 1, proto3_optional: true, type: :string, json_name: "fragmentId"

  field :additional_fragments, 2,
    repeated: true,
    type: Viam.App.V1.AdditionalFragment,
    json_name: "additionalFragments"
end

defmodule Viam.App.V1.ListNestedFragmentsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListNestedFragmentsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :fragments, 1, repeated: true, type: Viam.App.V1.Fragment

  field :resolved_fragments, 2,
    repeated: true,
    type: Viam.App.V1.ResolvedFragment,
    json_name: "resolvedFragments"
end

defmodule Viam.App.V1.ListMachineFragmentsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListMachineFragmentsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :machine_id, 1, type: :string, json_name: "machineId"

  field :additional_fragment_ids, 2,
    repeated: true,
    type: :string,
    json_name: "additionalFragmentIds"

  field :additional_fragments, 3,
    repeated: true,
    type: Viam.App.V1.AdditionalFragment,
    json_name: "additionalFragments"
end

defmodule Viam.App.V1.ListMachineFragmentsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListMachineFragmentsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :fragments, 1, repeated: true, type: Viam.App.V1.Fragment

  field :resolved_fragments, 2,
    repeated: true,
    type: Viam.App.V1.ResolvedFragment,
    json_name: "resolvedFragments"
end

defmodule Viam.App.V1.ListMachineSummariesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListMachineSummariesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :fragment_ids, 2, repeated: true, type: :string, json_name: "fragmentIds"
  field :location_ids, 3, repeated: true, type: :string, json_name: "locationIds"
  field :limit, 4, proto3_optional: true, type: :int32
end

defmodule Viam.App.V1.ListMachineSummariesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListMachineSummariesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :location_summaries, 1,
    repeated: true,
    type: Viam.App.V1.LocationSummary,
    json_name: "locationSummaries"
end

defmodule Viam.App.V1.LocationSummary do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.LocationSummary",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :location_id, 1, type: :string, json_name: "locationId"
  field :location_name, 2, type: :string, json_name: "locationName"

  field :machine_summaries, 3,
    repeated: true,
    type: Viam.App.V1.MachineSummary,
    json_name: "machineSummaries"
end

defmodule Viam.App.V1.MachineSummary do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.MachineSummary",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :machine_id, 1, type: :string, json_name: "machineId"
  field :machine_name, 2, type: :string, json_name: "machineName"

  field :part_summaries, 3,
    repeated: true,
    type: Viam.App.V1.PartSummary,
    json_name: "partSummaries"
end

defmodule Viam.App.V1.FragmentSummary do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.FragmentSummary",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :name, 3, type: :string
end

defmodule Viam.App.V1.ViamServerVersion do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ViamServerVersion",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :version, 0

  field :major, 1, type: :string, oneof: 0
  field :minor, 2, type: :string, oneof: 0
end

defmodule Viam.App.V1.ViamAgentVersion do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ViamAgentVersion",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :version, 0

  field :major, 1, type: :string, oneof: 0
  field :minor, 2, type: :string, oneof: 0
end

defmodule Viam.App.V1.PartSummary do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.PartSummary",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :part_id, 1, type: :string, json_name: "partId"
  field :part_name, 2, type: :string, json_name: "partName"
  field :is_main_part, 11, type: :bool, json_name: "isMainPart"
  field :online_state, 12, type: Viam.App.V1.OnlineState, json_name: "onlineState", enum: true
  field :seconds_since_online, 13, type: :int64, json_name: "secondsSinceOnline"

  field :last_access, 14,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "lastAccess"

  field :last_online, 3,
    proto3_optional: true,
    type: Google.Protobuf.Timestamp,
    json_name: "lastOnline"

  field :viam_server_version, 4,
    proto3_optional: true,
    type: Viam.App.V1.ViamServerVersion,
    json_name: "viamServerVersion"

  field :viam_agent_version, 5,
    proto3_optional: true,
    type: Viam.App.V1.ViamAgentVersion,
    json_name: "viamAgentVersion"

  field :os, 6, proto3_optional: true, type: :string
  field :platform, 7, proto3_optional: true, type: :string
  field :public_ip_address, 8, proto3_optional: true, type: :string, json_name: "publicIpAddress"
  field :dns_name, 10, proto3_optional: true, type: :string, json_name: "dnsName"
  field :fragments, 9, repeated: true, type: Viam.App.V1.FragmentSummary
end

defmodule Viam.App.V1.ListRobotsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListRobotsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :robots, 1, repeated: true, type: Viam.App.V1.Robot
end

defmodule Viam.App.V1.ListRobotsForLocationsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListRobotsForLocationsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :robots, 1, repeated: true, type: Viam.App.V1.Robot
end

defmodule Viam.App.V1.ListRobotsForOrgResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListRobotsForOrgResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :robots, 1, repeated: true, type: Viam.App.V1.Robot
end

defmodule Viam.App.V1.NewRobotRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.NewRobotRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :location, 2, type: :string
end

defmodule Viam.App.V1.NewRobotResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.NewRobotResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.V1.UpdateRobotRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateRobotRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
  field :location, 3, type: :string
end

defmodule Viam.App.V1.UpdateRobotResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateRobotResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :robot, 1, type: Viam.App.V1.Robot
end

defmodule Viam.App.V1.DeleteRobotRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteRobotRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.V1.DeleteRobotResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteRobotResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.GetRobotMetadataRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetRobotMetadataRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.V1.GetRobotMetadataResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetRobotMetadataResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :data, 1, type: Google.Protobuf.Struct
end

defmodule Viam.App.V1.UpdateRobotMetadataRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateRobotMetadataRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :data, 2, type: Google.Protobuf.Struct
end

defmodule Viam.App.V1.UpdateRobotMetadataResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateRobotMetadataResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.MarkPartAsMainRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.MarkPartAsMainRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :part_id, 1, type: :string, json_name: "partId"
end

defmodule Viam.App.V1.MarkPartAsMainResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.MarkPartAsMainResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.MarkPartForRestartRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.MarkPartForRestartRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :part_id, 1, type: :string, json_name: "partId"
end

defmodule Viam.App.V1.MarkPartForRestartResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.MarkPartForRestartResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.CreateRobotPartSecretRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CreateRobotPartSecretRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :part_id, 1, type: :string, json_name: "partId"
end

defmodule Viam.App.V1.CreateRobotPartSecretResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CreateRobotPartSecretResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :part, 1, type: Viam.App.V1.RobotPart
end

defmodule Viam.App.V1.DeleteRobotPartSecretRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteRobotPartSecretRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :part_id, 1, type: :string, json_name: "partId"
  field :secret_id, 2, type: :string, json_name: "secretId"
end

defmodule Viam.App.V1.DeleteRobotPartSecretResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteRobotPartSecretResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.Authorization do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.Authorization",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :authorization_type, 1, type: :string, json_name: "authorizationType"
  field :authorization_id, 2, type: :string, json_name: "authorizationId"
  field :resource_type, 3, type: :string, json_name: "resourceType"
  field :resource_id, 4, type: :string, json_name: "resourceId"
  field :identity_id, 5, type: :string, json_name: "identityId"
  field :organization_id, 6, type: :string, json_name: "organizationId"
  field :identity_type, 7, type: :string, json_name: "identityType"
end

defmodule Viam.App.V1.AddRoleRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.AddRoleRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :authorization, 1, type: Viam.App.V1.Authorization
end

defmodule Viam.App.V1.AddRoleResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.AddRoleResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.RemoveRoleRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.RemoveRoleRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :authorization, 1, type: Viam.App.V1.Authorization
end

defmodule Viam.App.V1.RemoveRoleResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.RemoveRoleResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.ChangeRoleRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ChangeRoleRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :old_authorization, 1, type: Viam.App.V1.Authorization, json_name: "oldAuthorization"
  field :new_authorization, 2, type: Viam.App.V1.Authorization, json_name: "newAuthorization"
end

defmodule Viam.App.V1.ChangeRoleResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ChangeRoleResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.ListAuthorizationsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListAuthorizationsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :resource_ids, 2, repeated: true, type: :string, json_name: "resourceIds"
end

defmodule Viam.App.V1.ListAuthorizationsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListAuthorizationsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :authorizations, 1, repeated: true, type: Viam.App.V1.Authorization
end

defmodule Viam.App.V1.CheckPermissionsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CheckPermissionsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :permissions, 1, repeated: true, type: Viam.App.V1.AuthorizedPermissions
end

defmodule Viam.App.V1.AuthorizedPermissions do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.AuthorizedPermissions",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :resource_type, 1, type: :string, json_name: "resourceType"
  field :resource_id, 2, type: :string, json_name: "resourceId"
  field :permissions, 3, repeated: true, type: :string
end

defmodule Viam.App.V1.CheckPermissionsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CheckPermissionsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :authorized_permissions, 1,
    repeated: true,
    type: Viam.App.V1.AuthorizedPermissions,
    json_name: "authorizedPermissions"
end

defmodule Viam.App.V1.ModuleVersion do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ModuleVersion",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :version, 1, type: :string
  field :files, 2, repeated: true, type: Viam.App.V1.Uploads
  field :models, 3, repeated: true, type: Viam.App.V1.Model
  field :entrypoint, 4, type: :string
  field :first_run, 5, proto3_optional: true, type: :string, json_name: "firstRun"

  field :markdown_description, 6,
    proto3_optional: true,
    type: :string,
    json_name: "markdownDescription"

  field :apps, 7, repeated: true, type: Viam.App.V1.App
end

defmodule Viam.App.V1.ModuleMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ModuleMetadata",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :models, 1, repeated: true, type: Viam.App.V1.Model
  field :versions, 2, repeated: true, type: Viam.App.V1.ModuleVersion
  field :entrypoint, 3, type: :string
  field :first_run, 4, proto3_optional: true, type: :string, json_name: "firstRun"

  field :markdown_description, 5,
    proto3_optional: true,
    type: :string,
    json_name: "markdownDescription"

  field :apps, 6, repeated: true, type: Viam.App.V1.App

  field :source_type, 7,
    proto3_optional: true,
    type: Viam.App.V1.ModuleSourceType,
    json_name: "sourceType",
    enum: true

  field :language, 8, proto3_optional: true, type: Viam.App.V1.ModuleLanguage, enum: true
end

defmodule Viam.App.V1.MLModelVersion do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.MLModelVersion",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :version, 1, type: :string
  field :created_on, 2, type: Google.Protobuf.Timestamp, json_name: "createdOn"
end

defmodule Viam.App.V1.MLModelMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.MLModelMetadata",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :versions, 1, repeated: true, type: :string, deprecated: true
  field :model_type, 2, type: Viam.App.Mltraining.V1.ModelType, json_name: "modelType", enum: true

  field :model_framework, 3,
    type: Viam.App.Mltraining.V1.ModelFramework,
    json_name: "modelFramework",
    enum: true

  field :detailed_versions, 4,
    repeated: true,
    type: Viam.App.V1.MLModelVersion,
    json_name: "detailedVersions"
end

defmodule Viam.App.V1.MLTrainingVersion do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.MLTrainingVersion",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :version, 1, type: :string
  field :created_on, 2, type: Google.Protobuf.Timestamp, json_name: "createdOn"
end

defmodule Viam.App.V1.MLTrainingMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.MLTrainingMetadata",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :versions, 5, repeated: true, type: Viam.App.V1.MLTrainingVersion
  field :model_type, 2, type: Viam.App.Mltraining.V1.ModelType, json_name: "modelType", enum: true

  field :model_framework, 3,
    type: Viam.App.Mltraining.V1.ModelFramework,
    json_name: "modelFramework",
    enum: true

  field :draft, 4, type: :bool
end

defmodule Viam.App.V1.RegistryItem do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.RegistryItem",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :metadata, 0

  field :item_id, 1, type: :string, json_name: "itemId"
  field :organization_id, 2, type: :string, json_name: "organizationId"
  field :public_namespace, 3, type: :string, json_name: "publicNamespace"
  field :name, 4, type: :string
  field :type, 5, type: Viam.App.Packages.V1.PackageType, enum: true
  field :visibility, 6, type: Viam.App.V1.Visibility, enum: true
  field :url, 7, type: :string
  field :description, 8, type: :string
  field :total_robot_usage, 9, type: :int64, json_name: "totalRobotUsage"
  field :total_external_robot_usage, 13, type: :int64, json_name: "totalExternalRobotUsage"
  field :total_organization_usage, 10, type: :int64, json_name: "totalOrganizationUsage"

  field :total_external_organization_usage, 14,
    type: :int64,
    json_name: "totalExternalOrganizationUsage"

  field :module_metadata, 11,
    type: Viam.App.V1.ModuleMetadata,
    json_name: "moduleMetadata",
    oneof: 0

  field :ml_model_metadata, 12,
    type: Viam.App.V1.MLModelMetadata,
    json_name: "mlModelMetadata",
    oneof: 0

  field :ml_training_metadata, 18,
    type: Viam.App.V1.MLTrainingMetadata,
    json_name: "mlTrainingMetadata",
    oneof: 0

  field :created_at, 15, type: Google.Protobuf.Timestamp, json_name: "createdAt"
  field :updated_at, 16, type: Google.Protobuf.Timestamp, json_name: "updatedAt"
end

defmodule Viam.App.V1.GetRegistryItemRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetRegistryItemRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :item_id, 1, type: :string, json_name: "itemId"

  field :include_markdown_documentation, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "includeMarkdownDocumentation"
end

defmodule Viam.App.V1.GetRegistryItemResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetRegistryItemResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :item, 1, type: Viam.App.V1.RegistryItem
end

defmodule Viam.App.V1.CreateRegistryItemRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CreateRegistryItemRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :name, 2, type: :string
  field :type, 3, type: Viam.App.Packages.V1.PackageType, enum: true
end

defmodule Viam.App.V1.CreateRegistryItemResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CreateRegistryItemResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.UpdateRegistryItemRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateRegistryItemRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :metadata, 0

  field :item_id, 1, type: :string, json_name: "itemId"
  field :type, 2, type: Viam.App.Packages.V1.PackageType, enum: true
  field :description, 3, type: :string
  field :visibility, 4, type: Viam.App.V1.Visibility, enum: true
  field :url, 5, proto3_optional: true, type: :string

  field :update_module_metadata, 6,
    type: Viam.App.V1.UpdateModuleMetadata,
    json_name: "updateModuleMetadata",
    oneof: 0

  field :update_ml_model_metadata, 7,
    type: Viam.App.V1.UpdateMLModelMetadata,
    json_name: "updateMlModelMetadata",
    oneof: 0

  field :update_ml_training_metadata, 8,
    type: Viam.App.V1.UpdateMLTrainingMetadata,
    json_name: "updateMlTrainingMetadata",
    oneof: 0

  field :markdown_description, 9,
    proto3_optional: true,
    type: :string,
    json_name: "markdownDescription"
end

defmodule Viam.App.V1.UpdateRegistryItemResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateRegistryItemResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.ListRegistryItemsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListRegistryItemsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, proto3_optional: true, type: :string, json_name: "organizationId"
  field :types, 2, repeated: true, type: Viam.App.Packages.V1.PackageType, enum: true
  field :visibilities, 3, repeated: true, type: Viam.App.V1.Visibility, enum: true
  field :platforms, 4, repeated: true, type: :string
  field :statuses, 5, repeated: true, type: Viam.App.V1.RegistryItemStatus, enum: true
  field :search_term, 6, proto3_optional: true, type: :string, json_name: "searchTerm"
  field :page_token, 7, proto3_optional: true, type: :string, json_name: "pageToken"
  field :public_namespaces, 8, repeated: true, type: :string, json_name: "publicNamespaces"

  field :include_markdown_documentation, 9,
    proto3_optional: true,
    type: :bool,
    json_name: "includeMarkdownDocumentation"

  field :module_source_types, 10,
    repeated: true,
    type: Viam.App.V1.ModuleSourceType,
    json_name: "moduleSourceTypes",
    enum: true

  field :module_languages, 11,
    repeated: true,
    type: Viam.App.V1.ModuleLanguage,
    json_name: "moduleLanguages",
    enum: true
end

defmodule Viam.App.V1.ListRegistryItemsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListRegistryItemsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :items, 1, repeated: true, type: Viam.App.V1.RegistryItem
end

defmodule Viam.App.V1.DeleteRegistryItemRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteRegistryItemRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :item_id, 1, type: :string, json_name: "itemId"
end

defmodule Viam.App.V1.DeleteRegistryItemResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteRegistryItemResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.RenameRegistryItemRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.RenameRegistryItemRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :item_id, 1, type: :string, json_name: "itemId"
  field :new_name, 2, type: :string, json_name: "newName"
end

defmodule Viam.App.V1.RenameRegistryItemResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.RenameRegistryItemResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :item, 1, type: Viam.App.V1.RegistryItem
end

defmodule Viam.App.V1.TransferRegistryItemRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.TransferRegistryItemRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :item_id, 1, type: :string, json_name: "itemId"
  field :new_public_namespace, 2, type: :string, json_name: "newPublicNamespace"
end

defmodule Viam.App.V1.TransferRegistryItemResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.TransferRegistryItemResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.CreateModuleRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CreateModuleRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :name, 2, type: :string
end

defmodule Viam.App.V1.CreateModuleResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CreateModuleResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :module_id, 1, type: :string, json_name: "moduleId"
  field :url, 2, type: :string
end

defmodule Viam.App.V1.UpdateModuleRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateModuleRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :module_id, 1, type: :string, json_name: "moduleId"
  field :visibility, 2, type: Viam.App.V1.Visibility, enum: true
  field :url, 3, type: :string
  field :description, 4, type: :string
  field :models, 5, repeated: true, type: Viam.App.V1.Model
  field :entrypoint, 6, type: :string
  field :first_run, 7, proto3_optional: true, type: :string, json_name: "firstRun"
  field :apps, 8, repeated: true, type: Viam.App.V1.App

  field :markdown_description, 9,
    proto3_optional: true,
    type: :string,
    json_name: "markdownDescription"
end

defmodule Viam.App.V1.AllowedOrgIDs do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.AllowedOrgIDs",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :ids, 1, repeated: true, type: :string
end

defmodule Viam.App.V1.App do
  @moduledoc false

  use Protobuf, full_name: "viam.app.v1.App", protoc_gen_elixir_version: "0.16.0", syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: :string
  field :entrypoint, 3, type: :string
  field :fragment_ids, 4, repeated: true, type: :string, json_name: "fragmentIds"
  field :logo_path, 5, proto3_optional: true, type: :string, json_name: "logoPath"
  field :customizations, 6, type: Viam.App.V1.AppCustomizations

  field :allowed_org_ids, 7,
    proto3_optional: true,
    type: Viam.App.V1.AllowedOrgIDs,
    json_name: "allowedOrgIds"
end

defmodule Viam.App.V1.UpdateModuleResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateModuleResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :url, 1, type: :string
end

defmodule Viam.App.V1.UpdateModuleMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateModuleMetadata",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :models, 1, repeated: true, type: Viam.App.V1.Model
  field :entrypoint, 2, type: :string
  field :apps, 3, repeated: true, type: Viam.App.V1.App

  field :source_type, 4,
    proto3_optional: true,
    type: Viam.App.V1.ModuleSourceType,
    json_name: "sourceType",
    enum: true

  field :language, 5, proto3_optional: true, type: Viam.App.V1.ModuleLanguage, enum: true
end

defmodule Viam.App.V1.UpdateMLModelMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateMLModelMetadata",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :model_type, 1, type: Viam.App.Mltraining.V1.ModelType, json_name: "modelType", enum: true

  field :model_framework, 2,
    type: Viam.App.Mltraining.V1.ModelFramework,
    json_name: "modelFramework",
    enum: true
end

defmodule Viam.App.V1.UpdateMLTrainingMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateMLTrainingMetadata",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :model_type, 1, type: Viam.App.Mltraining.V1.ModelType, json_name: "modelType", enum: true

  field :model_framework, 2,
    type: Viam.App.Mltraining.V1.ModelFramework,
    json_name: "modelFramework",
    enum: true

  field :draft, 3, type: :bool
end

defmodule Viam.App.V1.Model do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.Model",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :api, 1, type: :string
  field :model, 2, type: :string

  field :markdown_documentation, 3,
    proto3_optional: true,
    type: :string,
    json_name: "markdownDocumentation"

  field :description, 4, proto3_optional: true, type: :string
  field :supported_hardware, 5, repeated: true, type: :string, json_name: "supportedHardware"
end

defmodule Viam.App.V1.ModuleFileInfo do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ModuleFileInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :module_id, 1, type: :string, json_name: "moduleId"
  field :version, 2, type: :string
  field :platform, 3, type: :string
  field :platform_tags, 5, repeated: true, type: :string, json_name: "platformTags"
end

defmodule Viam.App.V1.UploadModuleFileRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UploadModuleFileRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :module_file, 0

  field :module_file_info, 1,
    type: Viam.App.V1.ModuleFileInfo,
    json_name: "moduleFileInfo",
    oneof: 0

  field :file, 2, type: :bytes, oneof: 0
end

defmodule Viam.App.V1.UploadModuleFileResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UploadModuleFileResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :url, 1, type: :string
end

defmodule Viam.App.V1.GetModuleRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetModuleRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :module_id, 1, type: :string, json_name: "moduleId"

  field :include_markdown_documentation, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "includeMarkdownDocumentation"
end

defmodule Viam.App.V1.GetModuleResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetModuleResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :module, 1, type: Viam.App.V1.Module
end

defmodule Viam.App.V1.Module do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.Module",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :module_id, 1, type: :string, json_name: "moduleId"
  field :name, 2, type: :string
  field :visibility, 3, type: Viam.App.V1.Visibility, enum: true
  field :versions, 4, repeated: true, type: Viam.App.V1.VersionHistory
  field :url, 5, type: :string
  field :description, 6, type: :string
  field :models, 7, repeated: true, type: Viam.App.V1.Model
  field :total_robot_usage, 8, type: :int64, json_name: "totalRobotUsage"
  field :total_organization_usage, 9, type: :int64, json_name: "totalOrganizationUsage"
  field :organization_id, 10, type: :string, json_name: "organizationId"
  field :entrypoint, 11, type: :string
  field :public_namespace, 12, type: :string, json_name: "publicNamespace"
  field :first_run, 13, proto3_optional: true, type: :string, json_name: "firstRun"

  field :markdown_description, 14,
    proto3_optional: true,
    type: :string,
    json_name: "markdownDescription"

  field :apps, 15, repeated: true, type: Viam.App.V1.App
end

defmodule Viam.App.V1.VersionHistory do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.VersionHistory",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :version, 1, type: :string
  field :files, 2, repeated: true, type: Viam.App.V1.Uploads
  field :models, 3, repeated: true, type: Viam.App.V1.Model
  field :entrypoint, 4, type: :string
  field :first_run, 5, proto3_optional: true, type: :string, json_name: "firstRun"

  field :markdown_description, 6,
    proto3_optional: true,
    type: :string,
    json_name: "markdownDescription"

  field :apps, 7, repeated: true, type: Viam.App.V1.App
end

defmodule Viam.App.V1.Uploads do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.Uploads",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :platform, 1, type: :string
  field :uploaded_at, 2, type: Google.Protobuf.Timestamp, json_name: "uploadedAt"
end

defmodule Viam.App.V1.ListModulesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListModulesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, proto3_optional: true, type: :string, json_name: "organizationId"

  field :include_markdown_documentation, 2,
    proto3_optional: true,
    type: :bool,
    json_name: "includeMarkdownDocumentation"
end

defmodule Viam.App.V1.ListModulesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListModulesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :modules, 1, repeated: true, type: Viam.App.V1.Module
end

defmodule Viam.App.V1.GetUserIDByEmailRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetUserIDByEmailRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :email, 1, type: :string
end

defmodule Viam.App.V1.GetUserIDByEmailResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetUserIDByEmailResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :user_id, 1, type: :string, json_name: "userId"
end

defmodule Viam.App.V1.ListOrganizationsByUserRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListOrganizationsByUserRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :user_id, 1, type: :string, json_name: "userId"
end

defmodule Viam.App.V1.OrgDetails do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.OrgDetails",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
  field :org_name, 2, type: :string, json_name: "orgName"
  field :org_cid, 3, proto3_optional: true, type: :string, json_name: "orgCid"
  field :public_namespace, 4, proto3_optional: true, type: :string, json_name: "publicNamespace"
  field :billing_tier, 5, proto3_optional: true, type: :string, json_name: "billingTier"
end

defmodule Viam.App.V1.ListOrganizationsByUserResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListOrganizationsByUserResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :orgs, 1, repeated: true, type: Viam.App.V1.OrgDetails
end

defmodule Viam.App.V1.SearchOrganizationsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.SearchOrganizationsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, proto3_optional: true, type: :string, json_name: "orgId"
  field :org_name, 2, proto3_optional: true, type: :string, json_name: "orgName"
  field :cid, 3, proto3_optional: true, type: :string
  field :public_namespace, 4, proto3_optional: true, type: :string, json_name: "publicNamespace"
end

defmodule Viam.App.V1.SearchOrganizationsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.SearchOrganizationsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organizations, 1, repeated: true, type: Viam.App.V1.OrgDetails
end

defmodule Viam.App.V1.CreateKeyRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CreateKeyRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :authorizations, 1, repeated: true, type: Viam.App.V1.Authorization
  field :name, 2, type: :string
end

defmodule Viam.App.V1.CreateKeyResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CreateKeyResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :id, 2, type: :string
end

defmodule Viam.App.V1.DeleteKeyRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteKeyRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.V1.DeleteKeyResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteKeyResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.RenameKeyRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.RenameKeyRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
end

defmodule Viam.App.V1.RenameKeyResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.RenameKeyResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
end

defmodule Viam.App.V1.AuthorizationDetails do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.AuthorizationDetails",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :authorization_type, 1, type: :string, json_name: "authorizationType"
  field :authorization_id, 2, type: :string, json_name: "authorizationId"
  field :resource_type, 3, type: :string, json_name: "resourceType"
  field :resource_id, 4, type: :string, json_name: "resourceId"
  field :org_id, 5, type: :string, json_name: "orgId"
end

defmodule Viam.App.V1.APIKeyWithAuthorizations do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.APIKeyWithAuthorizations",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :api_key, 1, type: Viam.App.V1.APIKey, json_name: "apiKey"
  field :authorizations, 2, repeated: true, type: Viam.App.V1.AuthorizationDetails
end

defmodule Viam.App.V1.ListKeysRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListKeysRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
end

defmodule Viam.App.V1.ListKeysResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListKeysResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :api_keys, 1,
    repeated: true,
    type: Viam.App.V1.APIKeyWithAuthorizations,
    json_name: "apiKeys"
end

defmodule Viam.App.V1.RotateKeyRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.RotateKeyRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.V1.RotateKeyResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.RotateKeyResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :key, 2, type: :string
end

defmodule Viam.App.V1.CreateKeyFromExistingKeyAuthorizationsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CreateKeyFromExistingKeyAuthorizationsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.V1.CreateKeyFromExistingKeyAuthorizationsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CreateKeyFromExistingKeyAuthorizationsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :key, 2, type: :string
end

defmodule Viam.App.V1.GetAppContentRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetAppContentRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :public_namespace, 1, type: :string, json_name: "publicNamespace"
  field :name, 2, type: :string
end

defmodule Viam.App.V1.GetAppContentResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetAppContentResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :blob_path, 1, type: :string, json_name: "blobPath"
  field :entrypoint, 2, type: :string
  field :app_type, 3, type: Viam.App.V1.AppType, json_name: "appType", enum: true
  field :public, 4, type: :bool
end

defmodule Viam.App.V1.OrganizationSetLogoRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.OrganizationSetLogoRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
  field :logo, 2, type: :bytes
end

defmodule Viam.App.V1.OrganizationSetLogoResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.OrganizationSetLogoResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.OrganizationGetLogoRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.OrganizationGetLogoRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
end

defmodule Viam.App.V1.OrganizationGetLogoResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.OrganizationGetLogoResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :url, 1, type: :string
end

defmodule Viam.App.V1.EnableAuthServiceRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.EnableAuthServiceRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
end

defmodule Viam.App.V1.EnableAuthServiceResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.EnableAuthServiceResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.DisableAuthServiceRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DisableAuthServiceRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
end

defmodule Viam.App.V1.DisableAuthServiceResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DisableAuthServiceResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.CreateOAuthAppRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CreateOAuthAppRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
  field :client_name, 2, type: :string, json_name: "clientName"
  field :oauth_config, 3, type: Viam.App.V1.OAuthConfig, json_name: "oauthConfig"
end

defmodule Viam.App.V1.CreateOAuthAppResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CreateOAuthAppResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :client_id, 1, type: :string, json_name: "clientId"
  field :client_secret, 2, type: :string, json_name: "clientSecret"
end

defmodule Viam.App.V1.ReadOAuthAppRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ReadOAuthAppRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
  field :client_id, 2, type: :string, json_name: "clientId"
end

defmodule Viam.App.V1.ReadOAuthAppResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ReadOAuthAppResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :client_name, 1, type: :string, json_name: "clientName"
  field :client_secret, 2, type: :string, json_name: "clientSecret"
  field :oauth_config, 3, type: Viam.App.V1.OAuthConfig, json_name: "oauthConfig"
end

defmodule Viam.App.V1.UpdateOAuthAppRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateOAuthAppRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
  field :client_id, 2, type: :string, json_name: "clientId"
  field :client_name, 3, type: :string, json_name: "clientName"
  field :oauth_config, 4, type: Viam.App.V1.OAuthConfig, json_name: "oauthConfig"
end

defmodule Viam.App.V1.UpdateOAuthAppResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateOAuthAppResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.DeleteOAuthAppRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteOAuthAppRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
  field :client_id, 2, type: :string, json_name: "clientId"
end

defmodule Viam.App.V1.DeleteOAuthAppResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteOAuthAppResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.ListOAuthAppsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListOAuthAppsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
end

defmodule Viam.App.V1.ListOAuthAppsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ListOAuthAppsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :client_ids, 1, repeated: true, type: :string, json_name: "clientIds"
end

defmodule Viam.App.V1.OAuthConfig do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.OAuthConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :client_authentication, 1,
    type: Viam.App.V1.ClientAuthentication,
    json_name: "clientAuthentication",
    enum: true

  field :pkce, 2, type: Viam.App.V1.PKCE, enum: true

  field :url_validation, 3,
    type: Viam.App.V1.URLValidation,
    json_name: "urlValidation",
    enum: true

  field :origin_uris, 4, repeated: true, type: :string, json_name: "originUris"
  field :redirect_uris, 5, repeated: true, type: :string, json_name: "redirectUris"
  field :logout_uri, 6, type: :string, json_name: "logoutUri"

  field :enabled_grants, 7,
    repeated: true,
    type: Viam.App.V1.EnabledGrant,
    json_name: "enabledGrants",
    enum: true

  field :invite_redirect_uri, 8, type: :string, json_name: "inviteRedirectUri"
end

defmodule Viam.App.V1.GetAppBrandingRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetAppBrandingRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :public_namespace, 1, type: :string, json_name: "publicNamespace"
  field :name, 2, type: :string
end

defmodule Viam.App.V1.TextOverrides.FieldsEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.TextOverrides.FieldsEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Viam.App.V1.TextOverrides do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.TextOverrides",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :fields, 1, repeated: true, type: Viam.App.V1.TextOverrides.FieldsEntry, map: true
end

defmodule Viam.App.V1.GetAppBrandingResponse.TextCustomizationsEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetAppBrandingResponse.TextCustomizationsEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Viam.App.V1.TextOverrides
end

defmodule Viam.App.V1.GetAppBrandingResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetAppBrandingResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :logo_path, 1, proto3_optional: true, type: :string, json_name: "logoPath"

  field :text_customizations, 2,
    repeated: true,
    type: Viam.App.V1.GetAppBrandingResponse.TextCustomizationsEntry,
    json_name: "textCustomizations",
    map: true

  field :fragment_ids, 3, repeated: true, type: :string, json_name: "fragmentIds"
  field :allowed_org_ids, 4, repeated: true, type: :string, json_name: "allowedOrgIds"
end

defmodule Viam.App.V1.AppCustomizations do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.AppCustomizations",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :machine_picker, 1,
    type: Viam.App.V1.MachinePickerCustomizations,
    json_name: "machinePicker"
end

defmodule Viam.App.V1.MachinePickerCustomizations do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.MachinePickerCustomizations",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :heading, 1, proto3_optional: true, type: :string
  field :subheading, 2, proto3_optional: true, type: :string
end

defmodule Viam.App.V1.UploadDevicePushTokenRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UploadDevicePushTokenRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :app_id, 1, type: :string, json_name: "appId"
  field :device_token, 2, type: :string, json_name: "deviceToken"
  field :device_uuid, 3, type: :string, json_name: "deviceUuid"
end

defmodule Viam.App.V1.UploadDevicePushTokenResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UploadDevicePushTokenResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.DeleteDevicePushTokenRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteDevicePushTokenRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :app_id, 1, type: :string, json_name: "appId"
  field :device_uuid, 2, type: :string, json_name: "deviceUuid"
end

defmodule Viam.App.V1.DeleteDevicePushTokenResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteDevicePushTokenResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.GetDevicePushTokensRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetDevicePushTokensRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :app_id, 1, type: :string, json_name: "appId"
end

defmodule Viam.App.V1.GetDevicePushTokensResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetDevicePushTokensResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :device_tokens, 1, repeated: true, type: :string, json_name: "deviceTokens"
end

defmodule Viam.App.V1.SetFirebaseConfigRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.SetFirebaseConfigRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
  field :app_id, 2, type: :string, json_name: "appId"
  field :config_json, 3, type: :string, json_name: "configJson"
end

defmodule Viam.App.V1.SetFirebaseConfigResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.SetFirebaseConfigResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.GetFirebaseConfigRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetFirebaseConfigRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
end

defmodule Viam.App.V1.GetFirebaseConfigResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetFirebaseConfigResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :app_id, 1, type: :string, json_name: "appId"
end

defmodule Viam.App.V1.DeleteFirebaseConfigRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteFirebaseConfigRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
  field :app_id, 2, type: :string, json_name: "appId"
end

defmodule Viam.App.V1.DeleteFirebaseConfigResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.DeleteFirebaseConfigResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.AppService.Service do
  @moduledoc false

  use GRPC.Service, name: "viam.app.v1.AppService", protoc_gen_elixir_version: "0.16.0"

  rpc :GetUserIDByEmail, Viam.App.V1.GetUserIDByEmailRequest, Viam.App.V1.GetUserIDByEmailResponse

  rpc :CreateOrganization,
      Viam.App.V1.CreateOrganizationRequest,
      Viam.App.V1.CreateOrganizationResponse

  rpc :ListOrganizations,
      Viam.App.V1.ListOrganizationsRequest,
      Viam.App.V1.ListOrganizationsResponse

  rpc :GetOrganizationsWithAccessToLocation,
      Viam.App.V1.GetOrganizationsWithAccessToLocationRequest,
      Viam.App.V1.GetOrganizationsWithAccessToLocationResponse

  rpc :ListOrganizationsByUser,
      Viam.App.V1.ListOrganizationsByUserRequest,
      Viam.App.V1.ListOrganizationsByUserResponse

  rpc :SearchOrganizations,
      Viam.App.V1.SearchOrganizationsRequest,
      Viam.App.V1.SearchOrganizationsResponse

  rpc :GetOrganization, Viam.App.V1.GetOrganizationRequest, Viam.App.V1.GetOrganizationResponse

  rpc :GetOrganizationNamespaceAvailability,
      Viam.App.V1.GetOrganizationNamespaceAvailabilityRequest,
      Viam.App.V1.GetOrganizationNamespaceAvailabilityResponse

  rpc :UpdateOrganization,
      Viam.App.V1.UpdateOrganizationRequest,
      Viam.App.V1.UpdateOrganizationResponse

  rpc :UpdateOrganizationNamespace,
      Viam.App.V1.UpdateOrganizationNamespaceRequest,
      Viam.App.V1.UpdateOrganizationNamespaceResponse

  rpc :DeleteOrganization,
      Viam.App.V1.DeleteOrganizationRequest,
      Viam.App.V1.DeleteOrganizationResponse

  rpc :GetOrganizationMetadata,
      Viam.App.V1.GetOrganizationMetadataRequest,
      Viam.App.V1.GetOrganizationMetadataResponse

  rpc :UpdateOrganizationMetadata,
      Viam.App.V1.UpdateOrganizationMetadataRequest,
      Viam.App.V1.UpdateOrganizationMetadataResponse

  rpc :ListOrganizationMembers,
      Viam.App.V1.ListOrganizationMembersRequest,
      Viam.App.V1.ListOrganizationMembersResponse

  rpc :CreateOrganizationInvite,
      Viam.App.V1.CreateOrganizationInviteRequest,
      Viam.App.V1.CreateOrganizationInviteResponse

  rpc :UpdateOrganizationInviteAuthorizations,
      Viam.App.V1.UpdateOrganizationInviteAuthorizationsRequest,
      Viam.App.V1.UpdateOrganizationInviteAuthorizationsResponse

  rpc :DeleteOrganizationMember,
      Viam.App.V1.DeleteOrganizationMemberRequest,
      Viam.App.V1.DeleteOrganizationMemberResponse

  rpc :DeleteOrganizationInvite,
      Viam.App.V1.DeleteOrganizationInviteRequest,
      Viam.App.V1.DeleteOrganizationInviteResponse

  rpc :ResendOrganizationInvite,
      Viam.App.V1.ResendOrganizationInviteRequest,
      Viam.App.V1.ResendOrganizationInviteResponse

  rpc :EnableBillingService,
      Viam.App.V1.EnableBillingServiceRequest,
      Viam.App.V1.EnableBillingServiceResponse

  rpc :DisableBillingService,
      Viam.App.V1.DisableBillingServiceRequest,
      Viam.App.V1.DisableBillingServiceResponse

  rpc :UpdateBillingService,
      Viam.App.V1.UpdateBillingServiceRequest,
      Viam.App.V1.UpdateBillingServiceResponse

  rpc :GetBillingServiceConfig,
      Viam.App.V1.GetBillingServiceConfigRequest,
      Viam.App.V1.GetBillingServiceConfigResponse

  rpc :OrganizationSetSupportEmail,
      Viam.App.V1.OrganizationSetSupportEmailRequest,
      Viam.App.V1.OrganizationSetSupportEmailResponse

  rpc :OrganizationGetSupportEmail,
      Viam.App.V1.OrganizationGetSupportEmailRequest,
      Viam.App.V1.OrganizationGetSupportEmailResponse

  rpc :OrganizationSetLogo,
      Viam.App.V1.OrganizationSetLogoRequest,
      Viam.App.V1.OrganizationSetLogoResponse

  rpc :OrganizationGetLogo,
      Viam.App.V1.OrganizationGetLogoRequest,
      Viam.App.V1.OrganizationGetLogoResponse

  rpc :EnableAuthService,
      Viam.App.V1.EnableAuthServiceRequest,
      Viam.App.V1.EnableAuthServiceResponse

  rpc :DisableAuthService,
      Viam.App.V1.DisableAuthServiceRequest,
      Viam.App.V1.DisableAuthServiceResponse

  rpc :CreateOAuthApp, Viam.App.V1.CreateOAuthAppRequest, Viam.App.V1.CreateOAuthAppResponse

  rpc :ReadOAuthApp, Viam.App.V1.ReadOAuthAppRequest, Viam.App.V1.ReadOAuthAppResponse

  rpc :UpdateOAuthApp, Viam.App.V1.UpdateOAuthAppRequest, Viam.App.V1.UpdateOAuthAppResponse

  rpc :DeleteOAuthApp, Viam.App.V1.DeleteOAuthAppRequest, Viam.App.V1.DeleteOAuthAppResponse

  rpc :ListOAuthApps, Viam.App.V1.ListOAuthAppsRequest, Viam.App.V1.ListOAuthAppsResponse

  rpc :CreateLocation, Viam.App.V1.CreateLocationRequest, Viam.App.V1.CreateLocationResponse

  rpc :GetLocation, Viam.App.V1.GetLocationRequest, Viam.App.V1.GetLocationResponse

  rpc :UpdateLocation, Viam.App.V1.UpdateLocationRequest, Viam.App.V1.UpdateLocationResponse

  rpc :DeleteLocation, Viam.App.V1.DeleteLocationRequest, Viam.App.V1.DeleteLocationResponse

  rpc :GetLocationMetadata,
      Viam.App.V1.GetLocationMetadataRequest,
      Viam.App.V1.GetLocationMetadataResponse

  rpc :UpdateLocationMetadata,
      Viam.App.V1.UpdateLocationMetadataRequest,
      Viam.App.V1.UpdateLocationMetadataResponse

  rpc :ListLocations, Viam.App.V1.ListLocationsRequest, Viam.App.V1.ListLocationsResponse

  rpc :ShareLocation, Viam.App.V1.ShareLocationRequest, Viam.App.V1.ShareLocationResponse

  rpc :UnshareLocation, Viam.App.V1.UnshareLocationRequest, Viam.App.V1.UnshareLocationResponse

  rpc :LocationAuth, Viam.App.V1.LocationAuthRequest, Viam.App.V1.LocationAuthResponse

  rpc :CreateLocationSecret,
      Viam.App.V1.CreateLocationSecretRequest,
      Viam.App.V1.CreateLocationSecretResponse

  rpc :DeleteLocationSecret,
      Viam.App.V1.DeleteLocationSecretRequest,
      Viam.App.V1.DeleteLocationSecretResponse

  rpc :GetRobot, Viam.App.V1.GetRobotRequest, Viam.App.V1.GetRobotResponse

  rpc :GetRobotMetadata, Viam.App.V1.GetRobotMetadataRequest, Viam.App.V1.GetRobotMetadataResponse

  rpc :UpdateRobotMetadata,
      Viam.App.V1.UpdateRobotMetadataRequest,
      Viam.App.V1.UpdateRobotMetadataResponse

  rpc :GetRoverRentalRobots,
      Viam.App.V1.GetRoverRentalRobotsRequest,
      Viam.App.V1.GetRoverRentalRobotsResponse

  rpc :GetRobotParts, Viam.App.V1.GetRobotPartsRequest, Viam.App.V1.GetRobotPartsResponse

  rpc :GetRobotPart, Viam.App.V1.GetRobotPartRequest, Viam.App.V1.GetRobotPartResponse

  rpc :GetRobotPartByNameAndLocation,
      Viam.App.V1.GetRobotPartByNameAndLocationRequest,
      Viam.App.V1.GetRobotPartByNameAndLocationResponse

  rpc :GetRobotPartLogs, Viam.App.V1.GetRobotPartLogsRequest, Viam.App.V1.GetRobotPartLogsResponse

  rpc :TailRobotPartLogs,
      Viam.App.V1.TailRobotPartLogsRequest,
      stream(Viam.App.V1.TailRobotPartLogsResponse)

  rpc :GetRobotPartHistory,
      Viam.App.V1.GetRobotPartHistoryRequest,
      Viam.App.V1.GetRobotPartHistoryResponse

  rpc :UpdateRobotPart, Viam.App.V1.UpdateRobotPartRequest, Viam.App.V1.UpdateRobotPartResponse

  rpc :NewRobotPart, Viam.App.V1.NewRobotPartRequest, Viam.App.V1.NewRobotPartResponse

  rpc :DeleteRobotPart, Viam.App.V1.DeleteRobotPartRequest, Viam.App.V1.DeleteRobotPartResponse

  rpc :GetRobotPartMetadata,
      Viam.App.V1.GetRobotPartMetadataRequest,
      Viam.App.V1.GetRobotPartMetadataResponse

  rpc :UpdateRobotPartMetadata,
      Viam.App.V1.UpdateRobotPartMetadataRequest,
      Viam.App.V1.UpdateRobotPartMetadataResponse

  rpc :GetRobotAPIKeys, Viam.App.V1.GetRobotAPIKeysRequest, Viam.App.V1.GetRobotAPIKeysResponse

  rpc :MarkPartAsMain, Viam.App.V1.MarkPartAsMainRequest, Viam.App.V1.MarkPartAsMainResponse

  rpc :MarkPartForRestart,
      Viam.App.V1.MarkPartForRestartRequest,
      Viam.App.V1.MarkPartForRestartResponse

  rpc :CreateRobotPartSecret,
      Viam.App.V1.CreateRobotPartSecretRequest,
      Viam.App.V1.CreateRobotPartSecretResponse

  rpc :DeleteRobotPartSecret,
      Viam.App.V1.DeleteRobotPartSecretRequest,
      Viam.App.V1.DeleteRobotPartSecretResponse

  rpc :ListRobots, Viam.App.V1.ListRobotsRequest, Viam.App.V1.ListRobotsResponse

  rpc :ListRobotsForLocations,
      Viam.App.V1.ListRobotsForLocationsRequest,
      Viam.App.V1.ListRobotsForLocationsResponse

  rpc :ListRobotsForOrg, Viam.App.V1.ListRobotsForOrgRequest, Viam.App.V1.ListRobotsForOrgResponse

  rpc :NewRobot, Viam.App.V1.NewRobotRequest, Viam.App.V1.NewRobotResponse

  rpc :UpdateRobot, Viam.App.V1.UpdateRobotRequest, Viam.App.V1.UpdateRobotResponse

  rpc :DeleteRobot, Viam.App.V1.DeleteRobotRequest, Viam.App.V1.DeleteRobotResponse

  rpc :ListFragments, Viam.App.V1.ListFragmentsRequest, Viam.App.V1.ListFragmentsResponse

  rpc :GetFragment, Viam.App.V1.GetFragmentRequest, Viam.App.V1.GetFragmentResponse

  rpc :CreateFragment, Viam.App.V1.CreateFragmentRequest, Viam.App.V1.CreateFragmentResponse

  rpc :UpdateFragment, Viam.App.V1.UpdateFragmentRequest, Viam.App.V1.UpdateFragmentResponse

  rpc :DeleteFragment, Viam.App.V1.DeleteFragmentRequest, Viam.App.V1.DeleteFragmentResponse

  rpc :ListNestedFragments,
      Viam.App.V1.ListNestedFragmentsRequest,
      Viam.App.V1.ListNestedFragmentsResponse

  rpc :ListMachineFragments,
      Viam.App.V1.ListMachineFragmentsRequest,
      Viam.App.V1.ListMachineFragmentsResponse

  rpc :ListMachineSummaries,
      Viam.App.V1.ListMachineSummariesRequest,
      Viam.App.V1.ListMachineSummariesResponse

  rpc :GetFragmentHistory,
      Viam.App.V1.GetFragmentHistoryRequest,
      Viam.App.V1.GetFragmentHistoryResponse

  rpc :GetFragmentUsage, Viam.App.V1.GetFragmentUsageRequest, Viam.App.V1.GetFragmentUsageResponse

  rpc :SetFragmentTag, Viam.App.V1.SetFragmentTagRequest, Viam.App.V1.SetFragmentTagResponse

  rpc :DeleteFragmentTag,
      Viam.App.V1.DeleteFragmentTagRequest,
      Viam.App.V1.DeleteFragmentTagResponse

  rpc :AddRole, Viam.App.V1.AddRoleRequest, Viam.App.V1.AddRoleResponse

  rpc :RemoveRole, Viam.App.V1.RemoveRoleRequest, Viam.App.V1.RemoveRoleResponse

  rpc :ChangeRole, Viam.App.V1.ChangeRoleRequest, Viam.App.V1.ChangeRoleResponse

  rpc :ListAuthorizations,
      Viam.App.V1.ListAuthorizationsRequest,
      Viam.App.V1.ListAuthorizationsResponse

  rpc :CheckPermissions, Viam.App.V1.CheckPermissionsRequest, Viam.App.V1.CheckPermissionsResponse

  rpc :GetRegistryItem, Viam.App.V1.GetRegistryItemRequest, Viam.App.V1.GetRegistryItemResponse

  rpc :CreateRegistryItem,
      Viam.App.V1.CreateRegistryItemRequest,
      Viam.App.V1.CreateRegistryItemResponse

  rpc :UpdateRegistryItem,
      Viam.App.V1.UpdateRegistryItemRequest,
      Viam.App.V1.UpdateRegistryItemResponse

  rpc :ListRegistryItems,
      Viam.App.V1.ListRegistryItemsRequest,
      Viam.App.V1.ListRegistryItemsResponse

  rpc :DeleteRegistryItem,
      Viam.App.V1.DeleteRegistryItemRequest,
      Viam.App.V1.DeleteRegistryItemResponse

  rpc :RenameRegistryItem,
      Viam.App.V1.RenameRegistryItemRequest,
      Viam.App.V1.RenameRegistryItemResponse

  rpc :TransferRegistryItem,
      Viam.App.V1.TransferRegistryItemRequest,
      Viam.App.V1.TransferRegistryItemResponse

  rpc :CreateModule, Viam.App.V1.CreateModuleRequest, Viam.App.V1.CreateModuleResponse

  rpc :UpdateModule, Viam.App.V1.UpdateModuleRequest, Viam.App.V1.UpdateModuleResponse

  rpc :UploadModuleFile,
      stream(Viam.App.V1.UploadModuleFileRequest),
      Viam.App.V1.UploadModuleFileResponse

  rpc :GetModule, Viam.App.V1.GetModuleRequest, Viam.App.V1.GetModuleResponse

  rpc :ListModules, Viam.App.V1.ListModulesRequest, Viam.App.V1.ListModulesResponse

  rpc :CreateKey, Viam.App.V1.CreateKeyRequest, Viam.App.V1.CreateKeyResponse

  rpc :DeleteKey, Viam.App.V1.DeleteKeyRequest, Viam.App.V1.DeleteKeyResponse

  rpc :ListKeys, Viam.App.V1.ListKeysRequest, Viam.App.V1.ListKeysResponse

  rpc :RenameKey, Viam.App.V1.RenameKeyRequest, Viam.App.V1.RenameKeyResponse

  rpc :RotateKey, Viam.App.V1.RotateKeyRequest, Viam.App.V1.RotateKeyResponse

  rpc :CreateKeyFromExistingKeyAuthorizations,
      Viam.App.V1.CreateKeyFromExistingKeyAuthorizationsRequest,
      Viam.App.V1.CreateKeyFromExistingKeyAuthorizationsResponse

  rpc :GetAppContent, Viam.App.V1.GetAppContentRequest, Viam.App.V1.GetAppContentResponse

  rpc :GetAppBranding, Viam.App.V1.GetAppBrandingRequest, Viam.App.V1.GetAppBrandingResponse

  rpc :UploadDevicePushToken,
      Viam.App.V1.UploadDevicePushTokenRequest,
      Viam.App.V1.UploadDevicePushTokenResponse

  rpc :DeleteDevicePushToken,
      Viam.App.V1.DeleteDevicePushTokenRequest,
      Viam.App.V1.DeleteDevicePushTokenResponse

  rpc :GetDevicePushTokens,
      Viam.App.V1.GetDevicePushTokensRequest,
      Viam.App.V1.GetDevicePushTokensResponse

  rpc :SetFirebaseConfig,
      Viam.App.V1.SetFirebaseConfigRequest,
      Viam.App.V1.SetFirebaseConfigResponse

  rpc :GetFirebaseConfig,
      Viam.App.V1.GetFirebaseConfigRequest,
      Viam.App.V1.GetFirebaseConfigResponse

  rpc :DeleteFirebaseConfig,
      Viam.App.V1.DeleteFirebaseConfigRequest,
      Viam.App.V1.DeleteFirebaseConfigResponse
end

defmodule Viam.App.V1.AppService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.App.V1.AppService.Service
end
