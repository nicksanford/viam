defmodule Viam.Service.Shell.V1.CopyFilesSourceType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.service.shell.v1.CopyFilesSourceType",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :COPY_FILES_SOURCE_TYPE_UNSPECIFIED, 0
  field :COPY_FILES_SOURCE_TYPE_SINGLE_FILE, 1
  field :COPY_FILES_SOURCE_TYPE_SINGLE_DIRECTORY, 2
  field :COPY_FILES_SOURCE_TYPE_MULTIPLE_FILES, 3
end

defmodule Viam.Service.Shell.V1.ShellRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.shell.v1.ShellRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :data_in, 2, type: :string, json_name: "dataIn"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Shell.V1.ShellResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.shell.v1.ShellResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :data_out, 1, type: :string, json_name: "dataOut"
  field :data_err, 2, type: :string, json_name: "dataErr"
  field :eof, 3, type: :bool
end

defmodule Viam.Service.Shell.V1.FileData do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.shell.v1.FileData",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :size, 2, type: :int64
  field :is_dir, 3, type: :bool, json_name: "isDir"
  field :data, 4, type: :bytes
  field :eof, 5, type: :bool
  field :mod_time, 6, proto3_optional: true, type: Google.Protobuf.Timestamp, json_name: "modTime"
  field :mode, 7, proto3_optional: true, type: :uint32
end

defmodule Viam.Service.Shell.V1.CopyFilesToMachineRequestMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.shell.v1.CopyFilesToMachineRequestMetadata",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string

  field :source_type, 2,
    type: Viam.Service.Shell.V1.CopyFilesSourceType,
    json_name: "sourceType",
    enum: true

  field :destination, 3, type: :string
  field :preserve, 4, type: :bool
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Shell.V1.CopyFilesToMachineRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.shell.v1.CopyFilesToMachineRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :request, 0

  field :metadata, 1, type: Viam.Service.Shell.V1.CopyFilesToMachineRequestMetadata, oneof: 0
  field :file_data, 2, type: Viam.Service.Shell.V1.FileData, json_name: "fileData", oneof: 0
end

defmodule Viam.Service.Shell.V1.CopyFilesToMachineResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.shell.v1.CopyFilesToMachineResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :ack_last_file, 1, type: :bool, json_name: "ackLastFile"
end

defmodule Viam.Service.Shell.V1.CopyFilesFromMachineRequestMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.shell.v1.CopyFilesFromMachineRequestMetadata",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :paths, 2, repeated: true, type: :string
  field :allow_recursion, 3, type: :bool, json_name: "allowRecursion"
  field :preserve, 4, type: :bool
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Shell.V1.CopyFilesFromMachineRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.shell.v1.CopyFilesFromMachineRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :request, 0

  field :metadata, 1, type: Viam.Service.Shell.V1.CopyFilesFromMachineRequestMetadata, oneof: 0
  field :ack_last_file, 2, type: :bool, json_name: "ackLastFile", oneof: 0
end

defmodule Viam.Service.Shell.V1.CopyFilesFromMachineResponseMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.shell.v1.CopyFilesFromMachineResponseMetadata",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :source_type, 1,
    type: Viam.Service.Shell.V1.CopyFilesSourceType,
    json_name: "sourceType",
    enum: true
end

defmodule Viam.Service.Shell.V1.CopyFilesFromMachineResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.shell.v1.CopyFilesFromMachineResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :response, 0

  field :metadata, 1, type: Viam.Service.Shell.V1.CopyFilesFromMachineResponseMetadata, oneof: 0
  field :file_data, 2, type: Viam.Service.Shell.V1.FileData, json_name: "fileData", oneof: 0
end

defmodule Viam.Service.Shell.V1.ShellService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.service.shell.v1.ShellService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :Shell,
      stream(Viam.Service.Shell.V1.ShellRequest),
      stream(Viam.Service.Shell.V1.ShellResponse)

  rpc :CopyFilesToMachine,
      stream(Viam.Service.Shell.V1.CopyFilesToMachineRequest),
      stream(Viam.Service.Shell.V1.CopyFilesToMachineResponse)

  rpc :CopyFilesFromMachine,
      stream(Viam.Service.Shell.V1.CopyFilesFromMachineRequest),
      stream(Viam.Service.Shell.V1.CopyFilesFromMachineResponse)

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse
end

defmodule Viam.Service.Shell.V1.ShellService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Service.Shell.V1.ShellService.Service
end
