defmodule Viam.Service.Mlmodel.V1.LabelType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.service.mlmodel.v1.LabelType",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :LABEL_TYPE_UNSPECIFIED, 0
  field :LABEL_TYPE_TENSOR_VALUE, 1
  field :LABEL_TYPE_TENSOR_AXIS, 2
end

defmodule Viam.Service.Mlmodel.V1.InferRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.mlmodel.v1.InferRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :input_tensors, 3, type: Viam.Service.Mlmodel.V1.FlatTensors, json_name: "inputTensors"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Mlmodel.V1.InferResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.mlmodel.v1.InferResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :output_tensors, 3, type: Viam.Service.Mlmodel.V1.FlatTensors, json_name: "outputTensors"
end

defmodule Viam.Service.Mlmodel.V1.MetadataRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.mlmodel.v1.MetadataRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Mlmodel.V1.MetadataResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.mlmodel.v1.MetadataResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :metadata, 1, type: Viam.Service.Mlmodel.V1.Metadata
end

defmodule Viam.Service.Mlmodel.V1.Metadata do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.mlmodel.v1.Metadata",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :type, 2, type: :string
  field :description, 3, type: :string

  field :input_info, 4,
    repeated: true,
    type: Viam.Service.Mlmodel.V1.TensorInfo,
    json_name: "inputInfo"

  field :output_info, 5,
    repeated: true,
    type: Viam.Service.Mlmodel.V1.TensorInfo,
    json_name: "outputInfo"
end

defmodule Viam.Service.Mlmodel.V1.TensorInfo do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.mlmodel.v1.TensorInfo",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :description, 2, type: :string
  field :data_type, 3, type: :string, json_name: "dataType"
  field :shape, 4, repeated: true, type: :int32

  field :associated_files, 5,
    repeated: true,
    type: Viam.Service.Mlmodel.V1.File,
    json_name: "associatedFiles"

  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Mlmodel.V1.File do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.mlmodel.v1.File",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :description, 2, type: :string

  field :label_type, 3,
    type: Viam.Service.Mlmodel.V1.LabelType,
    json_name: "labelType",
    enum: true
end

defmodule Viam.Service.Mlmodel.V1.FlatTensorDataInt8 do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.mlmodel.v1.FlatTensorDataInt8",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :data, 1, type: :bytes
end

defmodule Viam.Service.Mlmodel.V1.FlatTensorDataUInt8 do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.mlmodel.v1.FlatTensorDataUInt8",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :data, 1, type: :bytes
end

defmodule Viam.Service.Mlmodel.V1.FlatTensorDataInt16 do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.mlmodel.v1.FlatTensorDataInt16",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :data, 1, repeated: true, type: :fixed32, packed: true, deprecated: false
end

defmodule Viam.Service.Mlmodel.V1.FlatTensorDataUInt16 do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.mlmodel.v1.FlatTensorDataUInt16",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :data, 1, repeated: true, type: :fixed32, packed: true, deprecated: false
end

defmodule Viam.Service.Mlmodel.V1.FlatTensorDataInt32 do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.mlmodel.v1.FlatTensorDataInt32",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :data, 1, repeated: true, type: :sfixed32, packed: true, deprecated: false
end

defmodule Viam.Service.Mlmodel.V1.FlatTensorDataUInt32 do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.mlmodel.v1.FlatTensorDataUInt32",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :data, 1, repeated: true, type: :fixed32, packed: true, deprecated: false
end

defmodule Viam.Service.Mlmodel.V1.FlatTensorDataInt64 do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.mlmodel.v1.FlatTensorDataInt64",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :data, 1, repeated: true, type: :sfixed64, packed: true, deprecated: false
end

defmodule Viam.Service.Mlmodel.V1.FlatTensorDataUInt64 do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.mlmodel.v1.FlatTensorDataUInt64",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :data, 1, repeated: true, type: :fixed64, packed: true, deprecated: false
end

defmodule Viam.Service.Mlmodel.V1.FlatTensorDataFloat do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.mlmodel.v1.FlatTensorDataFloat",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :data, 1, repeated: true, type: :float, packed: true, deprecated: false
end

defmodule Viam.Service.Mlmodel.V1.FlatTensorDataDouble do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.mlmodel.v1.FlatTensorDataDouble",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :data, 1, repeated: true, type: :double, packed: true, deprecated: false
end

defmodule Viam.Service.Mlmodel.V1.FlatTensor do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.mlmodel.v1.FlatTensor",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  oneof :tensor, 0

  field :shape, 1, repeated: true, type: :fixed64

  field :int8_tensor, 2,
    type: Viam.Service.Mlmodel.V1.FlatTensorDataInt8,
    json_name: "int8Tensor",
    oneof: 0

  field :uint8_tensor, 3,
    type: Viam.Service.Mlmodel.V1.FlatTensorDataUInt8,
    json_name: "uint8Tensor",
    oneof: 0

  field :int16_tensor, 4,
    type: Viam.Service.Mlmodel.V1.FlatTensorDataInt16,
    json_name: "int16Tensor",
    oneof: 0

  field :uint16_tensor, 5,
    type: Viam.Service.Mlmodel.V1.FlatTensorDataUInt16,
    json_name: "uint16Tensor",
    oneof: 0

  field :int32_tensor, 6,
    type: Viam.Service.Mlmodel.V1.FlatTensorDataInt32,
    json_name: "int32Tensor",
    oneof: 0

  field :uint32_tensor, 7,
    type: Viam.Service.Mlmodel.V1.FlatTensorDataUInt32,
    json_name: "uint32Tensor",
    oneof: 0

  field :int64_tensor, 8,
    type: Viam.Service.Mlmodel.V1.FlatTensorDataInt64,
    json_name: "int64Tensor",
    oneof: 0

  field :uint64_tensor, 9,
    type: Viam.Service.Mlmodel.V1.FlatTensorDataUInt64,
    json_name: "uint64Tensor",
    oneof: 0

  field :float_tensor, 10,
    type: Viam.Service.Mlmodel.V1.FlatTensorDataFloat,
    json_name: "floatTensor",
    oneof: 0

  field :double_tensor, 11,
    type: Viam.Service.Mlmodel.V1.FlatTensorDataDouble,
    json_name: "doubleTensor",
    oneof: 0
end

defmodule Viam.Service.Mlmodel.V1.FlatTensors.TensorsEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.mlmodel.v1.FlatTensors.TensorsEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Viam.Service.Mlmodel.V1.FlatTensor
end

defmodule Viam.Service.Mlmodel.V1.FlatTensors do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.mlmodel.v1.FlatTensors",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :tensors, 1,
    repeated: true,
    type: Viam.Service.Mlmodel.V1.FlatTensors.TensorsEntry,
    map: true
end

defmodule Viam.Service.Mlmodel.V1.MLModelService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.service.mlmodel.v1.MLModelService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :Infer, Viam.Service.Mlmodel.V1.InferRequest, Viam.Service.Mlmodel.V1.InferResponse

  rpc :Metadata, Viam.Service.Mlmodel.V1.MetadataRequest, Viam.Service.Mlmodel.V1.MetadataResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse
end

defmodule Viam.Service.Mlmodel.V1.MLModelService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Service.Mlmodel.V1.MLModelService.Service
end
