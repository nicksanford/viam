defmodule Viam.App.Build.V1.JobStatus do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.build.v1.JobStatus",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :JOB_STATUS_UNSPECIFIED, 0
  field :JOB_STATUS_IN_PROGRESS, 1
  field :JOB_STATUS_FAILED, 2
  field :JOB_STATUS_DONE, 3
end

defmodule Viam.App.Build.V1.StartBuildRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.StartBuildRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :repo, 1, type: :string
  field :ref, 2, proto3_optional: true, type: :string
  field :platforms, 3, repeated: true, type: :string
  field :module_id, 4, type: :string, json_name: "moduleId"
  field :module_version, 5, type: :string, json_name: "moduleVersion"
  field :token, 6, proto3_optional: true, type: :string
  field :workdir, 7, proto3_optional: true, type: :string
  field :distro, 8, proto3_optional: true, type: :string
end

defmodule Viam.App.Build.V1.StartBuildResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.StartBuildResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :build_id, 1, type: :string, json_name: "buildId"
end

defmodule Viam.App.Build.V1.GetLogsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.GetLogsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :build_id, 1, type: :string, json_name: "buildId"
  field :platform, 2, type: :string
end

defmodule Viam.App.Build.V1.ReloadBuildInfo do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.ReloadBuildInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :platform, 1, type: :string
  field :workdir, 2, proto3_optional: true, type: :string
  field :module_id, 3, type: :string, json_name: "moduleId"
  field :distro, 4, proto3_optional: true, type: :string
end

defmodule Viam.App.Build.V1.StartReloadBuildRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.StartReloadBuildRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :cloud_build, 0

  field :package, 1, type: Viam.App.Packages.V1.CreatePackageRequest, oneof: 0
  field :build_info, 2, type: Viam.App.Build.V1.ReloadBuildInfo, json_name: "buildInfo", oneof: 0
end

defmodule Viam.App.Build.V1.StartReloadBuildResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.StartReloadBuildResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :build_id, 1, type: :string, json_name: "buildId"
end

defmodule Viam.App.Build.V1.StartPackageBuildRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.StartPackageBuildRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :module_id, 1, type: :string, json_name: "moduleId"
  field :package_version, 2, type: :string, json_name: "packageVersion"
  field :module_version, 3, type: :string, json_name: "moduleVersion"
  field :platforms, 4, repeated: true, type: :string
  field :distro, 5, proto3_optional: true, type: :string
end

defmodule Viam.App.Build.V1.StartPackageBuildResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.StartPackageBuildResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :build_id, 1, type: :string, json_name: "buildId"
end

defmodule Viam.App.Build.V1.GetLogsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.GetLogsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :build_step, 1, type: :string, json_name: "buildStep"
  field :data, 2, type: :string
end

defmodule Viam.App.Build.V1.JobInfo do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.JobInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :build_id, 1, type: :string, json_name: "buildId"
  field :platform, 2, type: :string
  field :version, 3, type: :string
  field :status, 4, type: Viam.App.Build.V1.JobStatus, enum: true
  field :start_time, 5, type: Google.Protobuf.Timestamp, json_name: "startTime"
  field :end_time, 6, proto3_optional: true, type: Google.Protobuf.Timestamp, json_name: "endTime"
  field :build_step, 7, proto3_optional: true, type: :string, json_name: "buildStep"
end

defmodule Viam.App.Build.V1.ListJobsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.ListJobsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :module_id, 1, type: :string, json_name: "moduleId"
  field :max_jobs_length, 2, proto3_optional: true, type: :int32, json_name: "maxJobsLength"
  field :build_id, 3, proto3_optional: true, type: :string, json_name: "buildId"
end

defmodule Viam.App.Build.V1.ListJobsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.ListJobsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :jobs, 1, repeated: true, type: Viam.App.Build.V1.JobInfo
end

defmodule Viam.App.Build.V1.RepoLink do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.RepoLink",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :oauth_app_link_id, 1, type: :string, json_name: "oauthAppLinkId"
  field :org_id, 2, type: :string, json_name: "orgId"
  field :namespace, 3, proto3_optional: true, type: :string
  field :module_name, 4, type: :string, json_name: "moduleName"
  field :repo, 5, type: :string
  field :viam_user, 6, type: :string, json_name: "viamUser"
end

defmodule Viam.App.Build.V1.LinkRepoRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.LinkRepoRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :link, 1, type: Viam.App.Build.V1.RepoLink
end

defmodule Viam.App.Build.V1.LinkRepoResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.LinkRepoResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :repo_link_id, 1, type: :string, json_name: "repoLinkId"
end

defmodule Viam.App.Build.V1.UnlinkRepoRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.UnlinkRepoRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :repo_link_id, 1, type: :string, json_name: "repoLinkId"
end

defmodule Viam.App.Build.V1.UnlinkRepoResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.UnlinkRepoResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Build.V1.ListRepoLinksRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.ListRepoLinksRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Build.V1.ListRepoLinksResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.ListRepoLinksResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :links, 1, repeated: true, type: Viam.App.Build.V1.RepoLink
end

defmodule Viam.App.Build.V1.ListAppLinksRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.ListAppLinksRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Build.V1.AppLink do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.AppLink",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :oauth_app_link_id, 1, type: :string, json_name: "oauthAppLinkId"
  field :viam_user, 2, type: :string, json_name: "viamUser"
  field :external_user, 3, type: :string, json_name: "externalUser"
  field :org_id_or_ns, 4, repeated: true, type: :string, json_name: "orgIdOrNs"
end

defmodule Viam.App.Build.V1.ListAppLinksResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.ListAppLinksResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :links, 1, repeated: true, type: Viam.App.Build.V1.AppLink
end

defmodule Viam.App.Build.V1.RemoveAppLinkRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.RemoveAppLinkRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :oauth_app_link_id, 1, type: :string, json_name: "oauthAppLinkId"
end

defmodule Viam.App.Build.V1.RemoveAppLinkResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.RemoveAppLinkResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Build.V1.LinkOrgRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.LinkOrgRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :oauth_app_link_id, 1, type: :string, json_name: "oauthAppLinkId"
  field :org_id, 2, type: :string, json_name: "orgId"
end

defmodule Viam.App.Build.V1.LinkOrgResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.LinkOrgResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Build.V1.UnlinkOrgRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.UnlinkOrgRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :oauth_app_link_id, 1, type: :string, json_name: "oauthAppLinkId"
  field :org_id, 2, type: :string, json_name: "orgId"
end

defmodule Viam.App.Build.V1.UnlinkOrgResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.build.v1.UnlinkOrgResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Build.V1.BuildService.Service do
  @moduledoc false

  use GRPC.Service, name: "viam.app.build.v1.BuildService", protoc_gen_elixir_version: "0.16.0"

  rpc :StartBuild, Viam.App.Build.V1.StartBuildRequest, Viam.App.Build.V1.StartBuildResponse

  rpc :GetLogs, Viam.App.Build.V1.GetLogsRequest, stream(Viam.App.Build.V1.GetLogsResponse)

  rpc :ListJobs, Viam.App.Build.V1.ListJobsRequest, Viam.App.Build.V1.ListJobsResponse

  rpc :LinkRepo, Viam.App.Build.V1.LinkRepoRequest, Viam.App.Build.V1.LinkRepoResponse

  rpc :UnlinkRepo, Viam.App.Build.V1.UnlinkRepoRequest, Viam.App.Build.V1.UnlinkRepoResponse

  rpc :ListRepoLinks,
      Viam.App.Build.V1.ListRepoLinksRequest,
      Viam.App.Build.V1.ListRepoLinksResponse

  rpc :ListAppLinks, Viam.App.Build.V1.ListAppLinksRequest, Viam.App.Build.V1.ListAppLinksResponse

  rpc :RemoveAppLink,
      Viam.App.Build.V1.RemoveAppLinkRequest,
      Viam.App.Build.V1.RemoveAppLinkResponse

  rpc :LinkOrg, Viam.App.Build.V1.LinkOrgRequest, Viam.App.Build.V1.LinkOrgResponse

  rpc :UnlinkOrg, Viam.App.Build.V1.UnlinkOrgRequest, Viam.App.Build.V1.UnlinkOrgResponse

  rpc :StartReloadBuild,
      stream(Viam.App.Build.V1.StartReloadBuildRequest),
      Viam.App.Build.V1.StartReloadBuildResponse

  rpc :StartPackageBuild,
      Viam.App.Build.V1.StartPackageBuildRequest,
      Viam.App.Build.V1.StartPackageBuildResponse
end

defmodule Viam.App.Build.V1.BuildService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.App.Build.V1.BuildService.Service
end
