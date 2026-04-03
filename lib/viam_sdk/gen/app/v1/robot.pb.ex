defmodule Viam.App.V1.CredentialsType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.v1.CredentialsType",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :CREDENTIALS_TYPE_UNSPECIFIED, 0
  field :CREDENTIALS_TYPE_INTERNAL, 1
  field :CREDENTIALS_TYPE_API_KEY, 2
  field :CREDENTIALS_TYPE_ROBOT_SECRET, 3
  field :CREDENTIALS_TYPE_ROBOT_LOCATION_SECRET, 4
end

defmodule Viam.App.V1.RobotConfig do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.RobotConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :cloud, 1, type: Viam.App.V1.CloudConfig
  field :remotes, 2, repeated: true, type: Viam.App.V1.RemoteConfig
  field :components, 3, repeated: true, type: Viam.App.V1.ComponentConfig
  field :processes, 4, repeated: true, type: Viam.App.V1.ProcessConfig
  field :services, 5, repeated: true, type: Viam.App.V1.ServiceConfig
  field :network, 6, proto3_optional: true, type: Viam.App.V1.NetworkConfig
  field :auth, 7, proto3_optional: true, type: Viam.App.V1.AuthConfig
  field :debug, 8, proto3_optional: true, type: :bool
  field :modules, 9, repeated: true, type: Viam.App.V1.ModuleConfig

  field :disable_partial_start, 10,
    proto3_optional: true,
    type: :bool,
    json_name: "disablePartialStart"

  field :packages, 11, repeated: true, type: Viam.App.V1.PackageConfig

  field :overwrite_fragment_status, 12,
    repeated: true,
    type: Viam.App.V1.AppValidationStatus,
    json_name: "overwriteFragmentStatus"

  field :enable_web_profile, 13, type: :bool, json_name: "enableWebProfile"
  field :log, 14, repeated: true, type: Viam.App.V1.LogPatternConfig
  field :revision, 15, type: :string
  field :maintenance, 16, proto3_optional: true, type: Viam.App.V1.MaintenanceConfig
  field :disable_log_deduplication, 17, type: :bool, json_name: "disableLogDeduplication"
  field :jobs, 18, repeated: true, type: Viam.App.V1.JobConfig
  field :tracing, 19, proto3_optional: true, type: Viam.App.V1.TracingConfig
end

defmodule Viam.App.V1.LogPatternConfig do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.LogPatternConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :pattern, 1, type: :string
  field :level, 2, type: :string
end

defmodule Viam.App.V1.JobConfig do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.JobConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :schedule, 2, type: :string
  field :resource, 3, type: :string
  field :method, 4, type: :string
  field :command, 5, type: Google.Protobuf.Struct
  field :log_configuration, 6, type: Viam.App.V1.LogConfiguration, json_name: "logConfiguration"
end

defmodule Viam.App.V1.TracingConfig do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.TracingConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :enabled, 1, type: :bool
  field :disk, 2, type: :bool
  field :console, 3, type: :bool
  field :otlp_endpoint, 4, type: :string, json_name: "otlpEndpoint"
end

defmodule Viam.App.V1.LocationSecret do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.LocationSecret",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :secret, 2, type: :string
end

defmodule Viam.App.V1.AppValidationStatus do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.AppValidationStatus",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :error, 1, type: :string
end

defmodule Viam.App.V1.CloudConfig do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CloudConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :fqdn, 2, type: :string
  field :local_fqdn, 3, type: :string, json_name: "localFqdn"
  field :managed_by, 4, type: :string, json_name: "managedBy"
  field :signaling_address, 5, type: :string, json_name: "signalingAddress"
  field :signaling_insecure, 6, type: :bool, json_name: "signalingInsecure"
  field :location_secret, 7, type: :string, json_name: "locationSecret", deprecated: true
  field :secret, 8, type: :string

  field :location_secrets, 9,
    repeated: true,
    type: Viam.App.V1.LocationSecret,
    json_name: "locationSecrets"

  field :primary_org_id, 10, type: :string, json_name: "primaryOrgId"
  field :location_id, 11, type: :string, json_name: "locationId"
  field :machine_id, 12, type: :string, json_name: "machineId"
end

defmodule Viam.App.V1.ComponentConfig do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ComponentConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :namespace, 2, type: :string
  field :type, 3, type: :string
  field :model, 4, type: :string
  field :frame, 5, type: Viam.App.V1.Frame
  field :depends_on, 6, repeated: true, type: :string, json_name: "dependsOn"

  field :service_configs, 7,
    repeated: true,
    type: Viam.App.V1.ResourceLevelServiceConfig,
    json_name: "serviceConfigs",
    deprecated: false

  field :attributes, 8, type: Google.Protobuf.Struct
  field :api, 9, type: :string
  field :log_configuration, 10, type: Viam.App.V1.LogConfiguration, json_name: "logConfiguration"
end

defmodule Viam.App.V1.ResourceLevelServiceConfig do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ResourceLevelServiceConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :type, 1, type: :string
  field :attributes, 2, type: Google.Protobuf.Struct
end

defmodule Viam.App.V1.ProcessConfig.EnvEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ProcessConfig.EnvEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Viam.App.V1.ProcessConfig do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ProcessConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
  field :args, 3, repeated: true, type: :string
  field :cwd, 4, type: :string
  field :one_shot, 5, type: :bool, json_name: "oneShot"
  field :log, 6, type: :bool
  field :stop_signal, 7, type: :int32, json_name: "stopSignal"
  field :stop_timeout, 8, type: Google.Protobuf.Duration, json_name: "stopTimeout"
  field :env, 9, repeated: true, type: Viam.App.V1.ProcessConfig.EnvEntry, map: true
  field :username, 10, type: :string
end

defmodule Viam.App.V1.ServiceConfig do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ServiceConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :namespace, 2, type: :string
  field :type, 3, type: :string
  field :attributes, 4, type: Google.Protobuf.Struct
  field :depends_on, 5, repeated: true, type: :string, json_name: "dependsOn"
  field :model, 6, type: :string
  field :api, 9, type: :string

  field :service_configs, 10,
    repeated: true,
    type: Viam.App.V1.ResourceLevelServiceConfig,
    json_name: "serviceConfigs",
    deprecated: false

  field :log_configuration, 11, type: Viam.App.V1.LogConfiguration, json_name: "logConfiguration"
end

defmodule Viam.App.V1.NetworkConfig do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.NetworkConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :fqdn, 1, type: :string
  field :bind_address, 2, type: :string, json_name: "bindAddress"
  field :tls_cert_file, 3, type: :string, json_name: "tlsCertFile"
  field :tls_key_file, 4, type: :string, json_name: "tlsKeyFile"
  field :sessions, 5, type: Viam.App.V1.SessionsConfig

  field :traffic_tunnel_endpoints, 6,
    repeated: true,
    type: Viam.App.V1.TrafficTunnelEndpoint,
    json_name: "trafficTunnelEndpoints"

  field :no_tls, 7, type: :bool, json_name: "noTls"
end

defmodule Viam.App.V1.SessionsConfig do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.SessionsConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :heartbeat_window, 1, type: Google.Protobuf.Duration, json_name: "heartbeatWindow"
end

defmodule Viam.App.V1.TrafficTunnelEndpoint do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.TrafficTunnelEndpoint",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :port, 1, type: :int32
  field :connection_timeout, 2, type: Google.Protobuf.Duration, json_name: "connectionTimeout"
end

defmodule Viam.App.V1.AuthConfig do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.AuthConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :handlers, 1, repeated: true, type: Viam.App.V1.AuthHandlerConfig
  field :tls_auth_entities, 2, repeated: true, type: :string, json_name: "tlsAuthEntities"

  field :external_auth_config, 3,
    proto3_optional: true,
    type: Viam.App.V1.ExternalAuthConfig,
    json_name: "externalAuthConfig"
end

defmodule Viam.App.V1.JWKSFile do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.JWKSFile",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :json, 1, type: Google.Protobuf.Struct
end

defmodule Viam.App.V1.ExternalAuthConfig do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ExternalAuthConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :jwks, 1, type: Viam.App.V1.JWKSFile
end

defmodule Viam.App.V1.AuthHandlerConfig do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.AuthHandlerConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :type, 1, type: Viam.App.V1.CredentialsType, enum: true
  field :config, 5, type: Google.Protobuf.Struct
end

defmodule Viam.App.V1.Frame do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.Frame",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :parent, 1, type: :string
  field :translation, 2, type: Viam.App.V1.Translation
  field :orientation, 3, type: Viam.App.V1.Orientation
  field :geometry, 4, type: Viam.Common.V1.Geometry
end

defmodule Viam.App.V1.LogConfiguration do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.LogConfiguration",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :level, 1, type: :string
end

defmodule Viam.App.V1.Translation do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.Translation",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :x, 1, type: :double
  field :y, 2, type: :double
  field :z, 3, type: :double
end

defmodule Viam.App.V1.Orientation.NoOrientation do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.Orientation.NoOrientation",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.Orientation.OrientationVectorRadians do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.Orientation.OrientationVectorRadians",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :theta, 1, type: :double, deprecated: false
  field :x, 2, type: :double
  field :y, 3, type: :double
  field :z, 4, type: :double
end

defmodule Viam.App.V1.Orientation.OrientationVectorDegrees do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.Orientation.OrientationVectorDegrees",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :theta, 1, type: :double, deprecated: false
  field :x, 2, type: :double
  field :y, 3, type: :double
  field :z, 4, type: :double
end

defmodule Viam.App.V1.Orientation.EulerAngles do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.Orientation.EulerAngles",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :roll, 1, type: :double
  field :pitch, 2, type: :double
  field :yaw, 3, type: :double
end

defmodule Viam.App.V1.Orientation.AxisAngles do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.Orientation.AxisAngles",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :theta, 1, type: :double, deprecated: false
  field :x, 2, type: :double
  field :y, 3, type: :double
  field :z, 4, type: :double
end

defmodule Viam.App.V1.Orientation.Quaternion do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.Orientation.Quaternion",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :w, 1, type: :double
  field :x, 2, type: :double
  field :y, 3, type: :double
  field :z, 4, type: :double
end

defmodule Viam.App.V1.Orientation do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.Orientation",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :type, 0

  field :no_orientation, 1,
    type: Viam.App.V1.Orientation.NoOrientation,
    json_name: "noOrientation",
    oneof: 0

  field :vector_radians, 2,
    type: Viam.App.V1.Orientation.OrientationVectorRadians,
    json_name: "vectorRadians",
    oneof: 0

  field :vector_degrees, 3,
    type: Viam.App.V1.Orientation.OrientationVectorDegrees,
    json_name: "vectorDegrees",
    oneof: 0

  field :euler_angles, 4,
    type: Viam.App.V1.Orientation.EulerAngles,
    json_name: "eulerAngles",
    oneof: 0

  field :axis_angles, 5,
    type: Viam.App.V1.Orientation.AxisAngles,
    json_name: "axisAngles",
    oneof: 0

  field :quaternion, 6, type: Viam.App.V1.Orientation.Quaternion, oneof: 0
end

defmodule Viam.App.V1.RemoteConfig do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.RemoteConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :address, 2, type: :string
  field :frame, 3, type: Viam.App.V1.Frame
  field :auth, 4, type: Viam.App.V1.RemoteAuth
  field :managed_by, 5, type: :string, json_name: "managedBy"
  field :insecure, 6, type: :bool

  field :connection_check_interval, 7,
    type: Google.Protobuf.Duration,
    json_name: "connectionCheckInterval"

  field :reconnect_interval, 8, type: Google.Protobuf.Duration, json_name: "reconnectInterval"

  field :service_configs, 9,
    repeated: true,
    type: Viam.App.V1.ResourceLevelServiceConfig,
    json_name: "serviceConfigs",
    deprecated: false

  field :secret, 10, type: :string
  field :prefix, 11, type: :string
end

defmodule Viam.App.V1.RemoteAuth.Credentials do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.RemoteAuth.Credentials",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :type, 1, type: Viam.App.V1.CredentialsType, enum: true
  field :payload, 2, type: :string
end

defmodule Viam.App.V1.RemoteAuth do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.RemoteAuth",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :credentials, 1, type: Viam.App.V1.RemoteAuth.Credentials
  field :entity, 2, type: :string
end

defmodule Viam.App.V1.AgentInfo do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.AgentInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :host, 1, type: :string
  field :os, 2, type: :string
  field :ips, 3, repeated: true, type: :string
  field :version, 4, type: :string
  field :git_revision, 5, type: :string, json_name: "gitRevision"
  field :platform, 6, proto3_optional: true, type: :string
  field :platform_tags, 7, repeated: true, type: :string, json_name: "platformTags"
end

defmodule Viam.App.V1.ConfigRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ConfigRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :agent_info, 2, proto3_optional: true, type: Viam.App.V1.AgentInfo, json_name: "agentInfo"
end

defmodule Viam.App.V1.ConfigResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ConfigResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :config, 1, type: Viam.App.V1.RobotConfig
end

defmodule Viam.App.V1.CertificateRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CertificateRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.V1.CertificateResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.CertificateResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :tls_certificate, 2, type: :string, json_name: "tlsCertificate"
  field :tls_private_key, 3, type: :string, json_name: "tlsPrivateKey"
end

defmodule Viam.App.V1.LogRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.LogRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :logs, 2, repeated: true, type: Viam.Common.V1.LogEntry
end

defmodule Viam.App.V1.LogResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.LogResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.V1.NeedsRestartRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.NeedsRestartRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.V1.NeedsRestartResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.NeedsRestartResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :must_restart, 2, type: :bool, json_name: "mustRestart"

  field :restart_check_interval, 3,
    type: Google.Protobuf.Duration,
    json_name: "restartCheckInterval"
end

defmodule Viam.App.V1.ModuleConfig.EnvEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ModuleConfig.EnvEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: :string
end

defmodule Viam.App.V1.ModuleConfig do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.ModuleConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :path, 2, type: :string
  field :log_level, 3, type: :string, json_name: "logLevel"
  field :type, 4, type: :string
  field :module_id, 5, type: :string, json_name: "moduleId"
  field :env, 6, repeated: true, type: Viam.App.V1.ModuleConfig.EnvEntry, map: true
  field :status, 7, type: Viam.App.V1.AppValidationStatus
  field :first_run_timeout, 8, type: Google.Protobuf.Duration, json_name: "firstRunTimeout"
  field :tcp_mode, 9, type: :bool, json_name: "tcpMode"
end

defmodule Viam.App.V1.PackageConfig do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.PackageConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :package, 2, type: :string
  field :version, 3, type: :string
  field :type, 4, type: :string
  field :status, 5, type: Viam.App.V1.AppValidationStatus
end

defmodule Viam.App.V1.MaintenanceConfig do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.v1.MaintenanceConfig",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :sensor_name, 1, type: Viam.Common.V1.ResourceName, json_name: "sensorName"
  field :maintenance_allowed_key, 2, type: :string, json_name: "maintenanceAllowedKey"
end

defmodule Viam.App.V1.RobotService.Service do
  @moduledoc false

  use GRPC.Service, name: "viam.app.v1.RobotService", protoc_gen_elixir_version: "0.16.0"

  rpc :Config, Viam.App.V1.ConfigRequest, Viam.App.V1.ConfigResponse

  rpc :Certificate, Viam.App.V1.CertificateRequest, Viam.App.V1.CertificateResponse

  rpc :Log, Viam.App.V1.LogRequest, Viam.App.V1.LogResponse

  rpc :NeedsRestart, Viam.App.V1.NeedsRestartRequest, Viam.App.V1.NeedsRestartResponse
end

defmodule Viam.App.V1.RobotService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.App.V1.RobotService.Service
end
