defmodule Viam.App.V1.PaymentMethodType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.v1.PaymentMethodType",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :PAYMENT_METHOD_TYPE_UNSPECIFIED, 0
  field :PAYMENT_METHOD_TYPE_CARD, 1
  field :PAYMENT_METHOD_TYPE_USBANKACCOUNT, 2
end

defmodule Viam.App.V1.UsageCostType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.v1.UsageCostType",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :USAGE_COST_TYPE_UNSPECIFIED, 0
  field :USAGE_COST_TYPE_DATA_UPLOAD, 1
  field :USAGE_COST_TYPE_DATA_EGRESS, 2
  field :USAGE_COST_TYPE_REMOTE_CONTROL, 3
  field :USAGE_COST_TYPE_STANDARD_COMPUTE, 4
  field :USAGE_COST_TYPE_CLOUD_STORAGE, 5
  field :USAGE_COST_TYPE_BINARY_DATA_CLOUD_STORAGE, 6
  field :USAGE_COST_TYPE_OTHER_CLOUD_STORAGE, 7
  field :USAGE_COST_TYPE_PER_MACHINE, 8
  field :USAGE_COST_TYPE_TRIGGER_NOTIFICATION, 9
  field :USAGE_COST_TYPE_TABULAR_DATA_CLOUD_STORAGE, 10
  field :USAGE_COST_TYPE_CONFIG_HISTORY_CLOUD_STORAGE, 11
  field :USAGE_COST_TYPE_LOGS_CLOUD_STORAGE, 12
  field :USAGE_COST_TYPE_TRAINING_LOGS_CLOUD_STORAGE, 13
  field :USAGE_COST_TYPE_PACKAGES_CLOUD_STORAGE, 14
  field :USAGE_COST_TYPE_BINARY_DATA_UPLOAD, 15
  field :USAGE_COST_TYPE_TABULAR_DATA_UPLOAD, 16
  field :USAGE_COST_TYPE_LOGS_UPLOAD, 17
  field :USAGE_COST_TYPE_BINARY_DATA_EGRESS, 18
  field :USAGE_COST_TYPE_TABULAR_DATA_EGRESS, 19
  field :USAGE_COST_TYPE_LOGS_EGRESS, 20
  field :USAGE_COST_TYPE_TRAINING_LOGS_EGRESS, 21
  field :USAGE_COST_TYPE_TABULAR_DATA_DATABASE_CLOUD_STORAGE, 22
  field :USAGE_COST_TYPE_TABULAR_DATA_DATABASE_COMPUTE, 23
  field :USAGE_COST_TYPE_BINARY_DATA_CROSS_REGION_EGRESS, 24
  field :USAGE_COST_TYPE_PIPELINE_SINK_CLOUD_STORAGE, 25
  field :USAGE_COST_TYPE_PIPELINE_SINK_COMPUTE, 26
end

defmodule Viam.App.V1.SourceType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.v1.SourceType",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :SOURCE_TYPE_UNSPECIFIED, 0
  field :SOURCE_TYPE_ORG, 1
  field :SOURCE_TYPE_FRAGMENT, 2
end

defmodule Viam.App.V1.InvoiceSummary do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.InvoiceSummary",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :invoice_date, 2, type: Google.Protobuf.Timestamp, json_name: "invoiceDate"
  field :invoice_amount, 3, type: :double, json_name: "invoiceAmount"
  field :status, 4, type: :string
  field :due_date, 5, type: Google.Protobuf.Timestamp, json_name: "dueDate"
  field :paid_date, 6, type: Google.Protobuf.Timestamp, json_name: "paidDate"
end

defmodule Viam.App.V1.PaymentMethodCard do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.PaymentMethodCard",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :brand, 1, type: :string
  field :last_four_digits, 2, type: :string, json_name: "lastFourDigits"
end

defmodule Viam.App.V1.VerificationInfo do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.VerificationInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :arrival_date, 1, type: :int64, json_name: "arrivalDate"
  field :hosted_verification_page_url, 2, type: :string, json_name: "hostedVerificationPageUrl"
end

defmodule Viam.App.V1.PaymentMethodUSBankAccount do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.PaymentMethodUSBankAccount",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :bank_name, 1, type: :string, json_name: "bankName"

  field :last_four_digits_account_number, 2,
    type: :string,
    json_name: "lastFourDigitsAccountNumber"

  field :routing_number, 3, type: :string, json_name: "routingNumber"
  field :account_type, 4, type: :string, json_name: "accountType"

  field :verification_info, 5,
    proto3_optional: true,
    type: Viam.App.V1.VerificationInfo,
    json_name: "verificationInfo"
end

defmodule Viam.App.V1.GetCurrentMonthUsageRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetCurrentMonthUsageRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
end

defmodule Viam.App.V1.UsageCost do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UsageCost",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :resource_type, 1, type: Viam.App.V1.UsageCostType, json_name: "resourceType", enum: true
  field :cost, 2, type: :double
end

defmodule Viam.App.V1.ResourceUsageCostsBySource do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ResourceUsageCostsBySource",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :source_type, 1, type: Viam.App.V1.SourceType, json_name: "sourceType", enum: true

  field :resource_usage_costs, 2,
    type: Viam.App.V1.ResourceUsageCosts,
    json_name: "resourceUsageCosts"

  field :tier_name, 3, type: :string, json_name: "tierName"
end

defmodule Viam.App.V1.ResourceUsageCosts do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ResourceUsageCosts",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :usage_costs, 1, repeated: true, type: Viam.App.V1.UsageCost, json_name: "usageCosts"
  field :discount, 2, type: :double
  field :total_with_discount, 3, type: :double, json_name: "totalWithDiscount"
  field :total_without_discount, 4, type: :double, json_name: "totalWithoutDiscount"
end

defmodule Viam.App.V1.GetCurrentMonthUsageResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetCurrentMonthUsageResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :start_date, 1, type: Google.Protobuf.Timestamp, json_name: "startDate"
  field :end_date, 2, type: Google.Protobuf.Timestamp, json_name: "endDate"

  field :resource_usage_costs_by_source, 14,
    repeated: true,
    type: Viam.App.V1.ResourceUsageCostsBySource,
    json_name: "resourceUsageCostsBySource"

  field :subtotal, 15, type: :double

  field :cloud_storage_usage_cost, 3,
    type: :double,
    json_name: "cloudStorageUsageCost",
    deprecated: true

  field :data_upload_usage_cost, 4,
    type: :double,
    json_name: "dataUploadUsageCost",
    deprecated: true

  field :data_egres_usage_cost, 5,
    type: :double,
    json_name: "dataEgresUsageCost",
    deprecated: true

  field :remote_control_usage_cost, 6,
    type: :double,
    json_name: "remoteControlUsageCost",
    deprecated: true

  field :standard_compute_usage_cost, 7,
    type: :double,
    json_name: "standardComputeUsageCost",
    deprecated: true

  field :discount_amount, 8, type: :double, json_name: "discountAmount", deprecated: true

  field :total_usage_with_discount, 9,
    type: :double,
    json_name: "totalUsageWithDiscount",
    deprecated: true

  field :total_usage_without_discount, 10,
    type: :double,
    json_name: "totalUsageWithoutDiscount",
    deprecated: true

  field :per_machine_usage_cost, 11,
    type: :double,
    json_name: "perMachineUsageCost",
    deprecated: true

  field :binary_data_cloud_storage_usage_cost, 12,
    type: :double,
    json_name: "binaryDataCloudStorageUsageCost",
    deprecated: true

  field :other_cloud_storage_usage_cost, 13,
    type: :double,
    json_name: "otherCloudStorageUsageCost",
    deprecated: true
end

defmodule Viam.App.V1.GetOrgBillingInformationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetOrgBillingInformationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
end

defmodule Viam.App.V1.GetOrgBillingInformationResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetOrgBillingInformationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :type, 1, type: Viam.App.V1.PaymentMethodType, enum: true
  field :billing_email, 2, type: :string, json_name: "billingEmail"
  field :method, 3, proto3_optional: true, type: Viam.App.V1.PaymentMethodCard
  field :billing_tier, 4, proto3_optional: true, type: :string, json_name: "billingTier"

  field :method_us_bank_account, 5,
    proto3_optional: true,
    type: Viam.App.V1.PaymentMethodUSBankAccount,
    json_name: "methodUsBankAccount"
end

defmodule Viam.App.V1.GetInvoicesSummaryRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetInvoicesSummaryRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id, 1, type: :string, json_name: "orgId"
end

defmodule Viam.App.V1.GetInvoicesSummaryResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetInvoicesSummaryResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :outstanding_balance, 1, type: :double, json_name: "outstandingBalance"
  field :invoices, 2, repeated: true, type: Viam.App.V1.InvoiceSummary
end

defmodule Viam.App.V1.GetInvoicePdfRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetInvoicePdfRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :org_id, 2, type: :string, json_name: "orgId"
end

defmodule Viam.App.V1.GetInvoicePdfResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetInvoicePdfResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :chunk, 1, type: :bytes
end

defmodule Viam.App.V1.SendPaymentRequiredEmailRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.SendPaymentRequiredEmailRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :customer_org_id, 1, type: :string, json_name: "customerOrgId"
  field :billing_owner_org_id, 2, type: :string, json_name: "billingOwnerOrgId"
end

defmodule Viam.App.V1.SendPaymentRequiredEmailResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.SendPaymentRequiredEmailResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.GetAvailableBillingTiersRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetAvailableBillingTiersRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.GetAvailableBillingTiersResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetAvailableBillingTiersResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :tiers, 1, repeated: true, type: :string
end

defmodule Viam.App.V1.UpdateOrganizationBillingTierRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateOrganizationBillingTierRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :billing_tier, 2, type: :string, json_name: "billingTier"
end

defmodule Viam.App.V1.UpdateOrganizationBillingTierResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateOrganizationBillingTierResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.GetLocationBillingOrganizationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetLocationBillingOrganizationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :location_id, 1, type: :string, json_name: "locationId"
end

defmodule Viam.App.V1.GetLocationBillingOrganizationResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.GetLocationBillingOrganizationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :billing_organization_id, 1, type: :string, json_name: "billingOrganizationId"
end

defmodule Viam.App.V1.UpdateLocationBillingOrganizationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateLocationBillingOrganizationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :location_id, 1, type: :string, json_name: "locationId"
  field :billing_organization_id, 2, type: :string, json_name: "billingOrganizationId"
end

defmodule Viam.App.V1.UpdateLocationBillingOrganizationResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.UpdateLocationBillingOrganizationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.ChargeOrganizationRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ChargeOrganizationRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id_to_charge, 1, type: :string, json_name: "orgIdToCharge"
  field :description, 2, proto3_optional: true, type: :string
  field :subtotal, 3, type: :double
  field :tax, 4, type: :double

  field :org_id_for_branding, 5,
    proto3_optional: true,
    type: :string,
    json_name: "orgIdForBranding"

  field :disable_confirmation_email, 6, type: :bool, json_name: "disableConfirmationEmail"
end

defmodule Viam.App.V1.ChargeOrganizationResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ChargeOrganizationResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :invoice_id, 1, type: :string, json_name: "invoiceId"
end

defmodule Viam.App.V1.CreateInvoiceAndChargeImmediatelyRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CreateInvoiceAndChargeImmediatelyRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :org_id_to_charge, 1, type: :string, json_name: "orgIdToCharge"
  field :amount, 2, type: :double
  field :description, 3, proto3_optional: true, type: :string

  field :org_id_for_branding, 4,
    proto3_optional: true,
    type: :string,
    json_name: "orgIdForBranding"

  field :disable_email, 5, type: :bool, json_name: "disableEmail"
end

defmodule Viam.App.V1.CreateInvoiceAndChargeImmediatelyResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CreateInvoiceAndChargeImmediatelyResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :invoice_id, 1, type: :string, json_name: "invoiceId"
end

defmodule Viam.App.V1.BillingService.Service do
  @moduledoc false

  use GRPC.Service, name: "viam.app.v1.BillingService", protoc_gen_elixir_version: "0.16.0"

  rpc :GetCurrentMonthUsage,
      Viam.App.V1.GetCurrentMonthUsageRequest,
      Viam.App.V1.GetCurrentMonthUsageResponse

  rpc :GetOrgBillingInformation,
      Viam.App.V1.GetOrgBillingInformationRequest,
      Viam.App.V1.GetOrgBillingInformationResponse

  rpc :GetInvoicesSummary,
      Viam.App.V1.GetInvoicesSummaryRequest,
      Viam.App.V1.GetInvoicesSummaryResponse

  rpc :GetInvoicePdf, Viam.App.V1.GetInvoicePdfRequest, stream(Viam.App.V1.GetInvoicePdfResponse)

  rpc :SendPaymentRequiredEmail,
      Viam.App.V1.SendPaymentRequiredEmailRequest,
      Viam.App.V1.SendPaymentRequiredEmailResponse

  rpc :GetAvailableBillingTiers,
      Viam.App.V1.GetAvailableBillingTiersRequest,
      Viam.App.V1.GetAvailableBillingTiersResponse

  rpc :UpdateOrganizationBillingTier,
      Viam.App.V1.UpdateOrganizationBillingTierRequest,
      Viam.App.V1.UpdateOrganizationBillingTierResponse

  rpc :GetLocationBillingOrganization,
      Viam.App.V1.GetLocationBillingOrganizationRequest,
      Viam.App.V1.GetLocationBillingOrganizationResponse

  rpc :UpdateLocationBillingOrganization,
      Viam.App.V1.UpdateLocationBillingOrganizationRequest,
      Viam.App.V1.UpdateLocationBillingOrganizationResponse

  rpc :ChargeOrganization,
      Viam.App.V1.ChargeOrganizationRequest,
      Viam.App.V1.ChargeOrganizationResponse

  rpc :CreateInvoiceAndChargeImmediately,
      Viam.App.V1.CreateInvoiceAndChargeImmediatelyRequest,
      Viam.App.V1.CreateInvoiceAndChargeImmediatelyResponse
end

defmodule Viam.App.V1.BillingService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.App.V1.BillingService.Service
end
