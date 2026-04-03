defmodule Viam.App.Packages.V1.PackageType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.packages.v1.PackageType",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :PACKAGE_TYPE_UNSPECIFIED, 0
  field :PACKAGE_TYPE_ARCHIVE, 1
  field :PACKAGE_TYPE_ML_MODEL, 2
  field :PACKAGE_TYPE_MODULE, 3
  field :PACKAGE_TYPE_SLAM_MAP, 4
  field :PACKAGE_TYPE_ML_TRAINING, 5
end

defmodule Viam.App.Packages.V1.FileInfo do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.packages.v1.FileInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :size, 2, type: :uint64
  field :is_directory, 3, proto3_optional: true, type: :bool, json_name: "isDirectory"
end

defmodule Viam.App.Packages.V1.PackageInfo do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.packages.v1.PackageInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :name, 2, type: :string
  field :version, 3, type: :string
  field :type, 4, type: Viam.App.Packages.V1.PackageType, enum: true
  field :platform, 7, proto3_optional: true, type: :string
  field :files, 5, repeated: true, type: Viam.App.Packages.V1.FileInfo
  field :metadata, 6, type: Google.Protobuf.Struct
end

defmodule Viam.App.Packages.V1.CreatePackageRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.packages.v1.CreatePackageRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :package, 0

  field :info, 1, type: Viam.App.Packages.V1.PackageInfo, oneof: 0
  field :contents, 2, type: :bytes, oneof: 0
end

defmodule Viam.App.Packages.V1.CreatePackageResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.packages.v1.CreatePackageResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :version, 2, type: :string
end

defmodule Viam.App.Packages.V1.DeletePackageRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.packages.v1.DeletePackageRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :version, 2, type: :string
  field :type, 3, type: Viam.App.Packages.V1.PackageType, enum: true
end

defmodule Viam.App.Packages.V1.DeletePackageResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.packages.v1.DeletePackageResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Packages.V1.Package do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.packages.v1.Package",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :info, 1, type: Viam.App.Packages.V1.PackageInfo
  field :url, 2, type: :string
  field :created_on, 3, type: Google.Protobuf.Timestamp, json_name: "createdOn"
  field :checksum, 4, type: :string
  field :id, 5, type: :string
end

defmodule Viam.App.Packages.V1.GetPackageRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.packages.v1.GetPackageRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :version, 2, type: :string
  field :include_url, 3, proto3_optional: true, type: :bool, json_name: "includeUrl"
  field :type, 4, proto3_optional: true, type: Viam.App.Packages.V1.PackageType, enum: true
  field :platform, 5, proto3_optional: true, type: :string
end

defmodule Viam.App.Packages.V1.GetPackageResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.packages.v1.GetPackageResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :package, 1, type: Viam.App.Packages.V1.Package
end

defmodule Viam.App.Packages.V1.ListPackagesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.packages.v1.ListPackagesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :name, 2, proto3_optional: true, type: :string
  field :version, 3, proto3_optional: true, type: :string
  field :type, 4, proto3_optional: true, type: Viam.App.Packages.V1.PackageType, enum: true
  field :include_url, 5, proto3_optional: true, type: :bool, json_name: "includeUrl"
end

defmodule Viam.App.Packages.V1.ListPackagesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.packages.v1.ListPackagesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :packages, 1, repeated: true, type: Viam.App.Packages.V1.Package
end

defmodule Viam.App.Packages.V1.PackageService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.app.packages.v1.PackageService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :CreatePackage,
      stream(Viam.App.Packages.V1.CreatePackageRequest),
      Viam.App.Packages.V1.CreatePackageResponse

  rpc :DeletePackage,
      Viam.App.Packages.V1.DeletePackageRequest,
      Viam.App.Packages.V1.DeletePackageResponse

  rpc :GetPackage, Viam.App.Packages.V1.GetPackageRequest, Viam.App.Packages.V1.GetPackageResponse

  rpc :ListPackages,
      Viam.App.Packages.V1.ListPackagesRequest,
      Viam.App.Packages.V1.ListPackagesResponse
end

defmodule Viam.App.Packages.V1.PackageService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.App.Packages.V1.PackageService.Service
end
