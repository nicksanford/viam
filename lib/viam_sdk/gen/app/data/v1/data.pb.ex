defmodule Viam.App.Data.V1.Order do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.data.v1.Order",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :ORDER_UNSPECIFIED, 0
  field :ORDER_DESCENDING, 1
  field :ORDER_ASCENDING, 2
end

defmodule Viam.App.Data.V1.TagsFilterType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.data.v1.TagsFilterType",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :TAGS_FILTER_TYPE_UNSPECIFIED, 0
  field :TAGS_FILTER_TYPE_MATCH_BY_OR, 1
  field :TAGS_FILTER_TYPE_TAGGED, 2
  field :TAGS_FILTER_TYPE_UNTAGGED, 3
end

defmodule Viam.App.Data.V1.TabularDataSourceType do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.data.v1.TabularDataSourceType",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :TABULAR_DATA_SOURCE_TYPE_UNSPECIFIED, 0
  field :TABULAR_DATA_SOURCE_TYPE_STANDARD, 1
  field :TABULAR_DATA_SOURCE_TYPE_HOT_STORAGE, 2
  field :TABULAR_DATA_SOURCE_TYPE_PIPELINE_SINK, 3
end

defmodule Viam.App.Data.V1.IndexableCollection do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.data.v1.IndexableCollection",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :INDEXABLE_COLLECTION_UNSPECIFIED, 0
  field :INDEXABLE_COLLECTION_HOT_STORE, 1
  field :INDEXABLE_COLLECTION_PIPELINE_SINK, 2
end

defmodule Viam.App.Data.V1.IndexCreator do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.app.data.v1.IndexCreator",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :INDEX_CREATOR_UNSPECIFIED, 0
  field :INDEX_CREATOR_VIAM, 1
  field :INDEX_CREATOR_CUSTOMER, 2
end

defmodule Viam.App.Data.V1.DataRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.DataRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :filter, 1, type: Viam.App.Data.V1.Filter
  field :limit, 2, type: :uint64
  field :last, 3, type: :string
  field :sort_order, 4, type: Viam.App.Data.V1.Order, json_name: "sortOrder", enum: true
end

defmodule Viam.App.Data.V1.Filter do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.Filter",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :component_name, 1, type: :string, json_name: "componentName"
  field :component_type, 2, type: :string, json_name: "componentType"
  field :method, 4, type: :string
  field :robot_name, 6, type: :string, json_name: "robotName"
  field :robot_id, 7, type: :string, json_name: "robotId"
  field :part_name, 8, type: :string, json_name: "partName"
  field :part_id, 9, type: :string, json_name: "partId"
  field :location_ids, 10, repeated: true, type: :string, json_name: "locationIds"
  field :organization_ids, 11, repeated: true, type: :string, json_name: "organizationIds"
  field :mime_type, 12, repeated: true, type: :string, json_name: "mimeType"
  field :interval, 13, type: Viam.App.Data.V1.CaptureInterval
  field :tags_filter, 14, type: Viam.App.Data.V1.TagsFilter, json_name: "tagsFilter"
  field :bbox_labels, 15, repeated: true, type: :string, json_name: "bboxLabels"
  field :dataset_id, 16, type: :string, json_name: "datasetId"
end

defmodule Viam.App.Data.V1.TagsFilter do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.TagsFilter",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :type, 1, type: Viam.App.Data.V1.TagsFilterType, enum: true
  field :tags, 2, repeated: true, type: :string
end

defmodule Viam.App.Data.V1.CaptureMetadata.MethodParametersEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.CaptureMetadata.MethodParametersEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Google.Protobuf.Any
end

defmodule Viam.App.Data.V1.CaptureMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.CaptureMetadata",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :location_id, 2, type: :string, json_name: "locationId"
  field :robot_name, 3, type: :string, json_name: "robotName"
  field :robot_id, 4, type: :string, json_name: "robotId"
  field :part_name, 5, type: :string, json_name: "partName"
  field :part_id, 6, type: :string, json_name: "partId"
  field :component_type, 7, type: :string, json_name: "componentType"
  field :component_name, 9, type: :string, json_name: "componentName"
  field :method_name, 10, type: :string, json_name: "methodName"

  field :method_parameters, 11,
    repeated: true,
    type: Viam.App.Data.V1.CaptureMetadata.MethodParametersEntry,
    json_name: "methodParameters",
    map: true

  field :tags, 12, repeated: true, type: :string
  field :mime_type, 13, type: :string, json_name: "mimeType"
end

defmodule Viam.App.Data.V1.CaptureInterval do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.CaptureInterval",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :start, 1, type: Google.Protobuf.Timestamp
  field :end, 2, type: Google.Protobuf.Timestamp
end

defmodule Viam.App.Data.V1.TabularDataByFilterRequest do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.app.data.v1.TabularDataByFilterRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :data_request, 1, type: Viam.App.Data.V1.DataRequest, json_name: "dataRequest"
  field :count_only, 2, type: :bool, json_name: "countOnly"
  field :include_internal_data, 3, type: :bool, json_name: "includeInternalData"
end

defmodule Viam.App.Data.V1.TabularDataByFilterResponse do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.app.data.v1.TabularDataByFilterResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :metadata, 1, repeated: true, type: Viam.App.Data.V1.CaptureMetadata
  field :data, 2, repeated: true, type: Viam.App.Data.V1.TabularData
  field :count, 3, type: :uint64
  field :last, 4, type: :string
  field :total_size_bytes, 5, type: :uint64, json_name: "totalSizeBytes"
end

defmodule Viam.App.Data.V1.TabularData do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.app.data.v1.TabularData",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :data, 1, type: Google.Protobuf.Struct
  field :metadata_index, 2, type: :uint32, json_name: "metadataIndex"
  field :time_requested, 3, type: Google.Protobuf.Timestamp, json_name: "timeRequested"
  field :time_received, 4, type: Google.Protobuf.Timestamp, json_name: "timeReceived"
end

defmodule Viam.App.Data.V1.TabularDataBySQLRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.TabularDataBySQLRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :sql_query, 2, type: :string, json_name: "sqlQuery"
end

defmodule Viam.App.Data.V1.TabularDataBySQLResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.TabularDataBySQLResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :raw_data, 2, repeated: true, type: :bytes, json_name: "rawData"
end

defmodule Viam.App.Data.V1.TabularDataSource do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.TabularDataSource",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :type, 1, type: Viam.App.Data.V1.TabularDataSourceType, enum: true
  field :pipeline_id, 2, proto3_optional: true, type: :string, json_name: "pipelineId"
end

defmodule Viam.App.Data.V1.TabularDataByMQLRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.TabularDataByMQLRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :mql_binary, 3, repeated: true, type: :bytes, json_name: "mqlBinary"
  field :use_recent_data, 4, proto3_optional: true, type: :bool, json_name: "useRecentData"

  field :data_source, 6,
    proto3_optional: true,
    type: Viam.App.Data.V1.TabularDataSource,
    json_name: "dataSource"

  field :query_prefix_name, 7, proto3_optional: true, type: :string, json_name: "queryPrefixName"
end

defmodule Viam.App.Data.V1.TabularDataByMQLResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.TabularDataByMQLResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :raw_data, 2, repeated: true, type: :bytes, json_name: "rawData"
end

defmodule Viam.App.Data.V1.ExportTabularDataRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.ExportTabularDataRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :part_id, 1, type: :string, json_name: "partId"
  field :resource_name, 2, type: :string, json_name: "resourceName"
  field :resource_subtype, 3, type: :string, json_name: "resourceSubtype"
  field :method_name, 4, type: :string, json_name: "methodName"
  field :interval, 5, type: Viam.App.Data.V1.CaptureInterval

  field :additional_parameters, 6,
    proto3_optional: true,
    type: Google.Protobuf.Struct,
    json_name: "additionalParameters"
end

defmodule Viam.App.Data.V1.ExportTabularDataResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.ExportTabularDataResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :part_id, 1, type: :string, json_name: "partId"
  field :resource_name, 2, type: :string, json_name: "resourceName"
  field :resource_subtype, 3, type: :string, json_name: "resourceSubtype"
  field :method_name, 4, type: :string, json_name: "methodName"
  field :time_captured, 5, type: Google.Protobuf.Timestamp, json_name: "timeCaptured"
  field :organization_id, 6, type: :string, json_name: "organizationId"
  field :location_id, 7, type: :string, json_name: "locationId"
  field :robot_name, 8, type: :string, json_name: "robotName"
  field :robot_id, 9, type: :string, json_name: "robotId"
  field :part_name, 10, type: :string, json_name: "partName"
  field :method_parameters, 11, type: Google.Protobuf.Struct, json_name: "methodParameters"
  field :tags, 12, repeated: true, type: :string
  field :payload, 13, type: Google.Protobuf.Struct
end

defmodule Viam.App.Data.V1.GetLatestTabularDataRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.GetLatestTabularDataRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :part_id, 1, type: :string, json_name: "partId"
  field :resource_name, 2, type: :string, json_name: "resourceName"
  field :method_name, 3, type: :string, json_name: "methodName"
  field :resource_subtype, 4, type: :string, json_name: "resourceSubtype"

  field :additional_parameters, 5,
    proto3_optional: true,
    type: Google.Protobuf.Struct,
    json_name: "additionalParameters"
end

defmodule Viam.App.Data.V1.GetLatestTabularDataResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.GetLatestTabularDataResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :time_captured, 1, type: Google.Protobuf.Timestamp, json_name: "timeCaptured"
  field :time_synced, 2, type: Google.Protobuf.Timestamp, json_name: "timeSynced"
  field :payload, 3, type: Google.Protobuf.Struct
end

defmodule Viam.App.Data.V1.BinaryData do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.BinaryData",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :binary, 1, type: :bytes
  field :metadata, 2, type: Viam.App.Data.V1.BinaryMetadata
end

defmodule Viam.App.Data.V1.BinaryDataByFilterRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.BinaryDataByFilterRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :data_request, 1, type: Viam.App.Data.V1.DataRequest, json_name: "dataRequest"
  field :include_binary, 2, type: :bool, json_name: "includeBinary"
  field :count_only, 3, type: :bool, json_name: "countOnly"
  field :include_internal_data, 4, type: :bool, json_name: "includeInternalData"
end

defmodule Viam.App.Data.V1.BinaryDataByFilterResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.BinaryDataByFilterResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :data, 1, repeated: true, type: Viam.App.Data.V1.BinaryData
  field :count, 2, type: :uint64
  field :last, 3, type: :string
  field :total_size_bytes, 4, type: :uint64, json_name: "totalSizeBytes"
end

defmodule Viam.App.Data.V1.BinaryID do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.app.data.v1.BinaryID",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :file_id, 1, type: :string, json_name: "fileId"
  field :organization_id, 2, type: :string, json_name: "organizationId"
  field :location_id, 3, type: :string, json_name: "locationId"
end

defmodule Viam.App.Data.V1.BinaryDataByIDsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.BinaryDataByIDsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :include_binary, 2, type: :bool, json_name: "includeBinary"

  field :binary_ids, 3,
    repeated: true,
    type: Viam.App.Data.V1.BinaryID,
    json_name: "binaryIds",
    deprecated: true

  field :binary_data_ids, 4, repeated: true, type: :string, json_name: "binaryDataIds"
end

defmodule Viam.App.Data.V1.BinaryDataByIDsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.BinaryDataByIDsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :data, 1, repeated: true, type: Viam.App.Data.V1.BinaryData
  field :count, 2, type: :uint64
end

defmodule Viam.App.Data.V1.BoundingBox do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.BoundingBox",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :label, 2, type: :string
  field :x_min_normalized, 3, type: :double, json_name: "xMinNormalized"
  field :y_min_normalized, 4, type: :double, json_name: "yMinNormalized"
  field :x_max_normalized, 5, type: :double, json_name: "xMaxNormalized"
  field :y_max_normalized, 6, type: :double, json_name: "yMaxNormalized"
  field :confidence, 7, proto3_optional: true, type: :double
end

defmodule Viam.App.Data.V1.Classification do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.Classification",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 3, type: :string
  field :label, 1, type: :string
  field :confidence, 2, proto3_optional: true, type: :double
end

defmodule Viam.App.Data.V1.Annotations do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.Annotations",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :bboxes, 1, repeated: true, type: Viam.App.Data.V1.BoundingBox
  field :classifications, 2, repeated: true, type: Viam.App.Data.V1.Classification
end

defmodule Viam.App.Data.V1.BinaryMetadata do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.BinaryMetadata",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string, deprecated: true
  field :capture_metadata, 2, type: Viam.App.Data.V1.CaptureMetadata, json_name: "captureMetadata"
  field :time_requested, 3, type: Google.Protobuf.Timestamp, json_name: "timeRequested"
  field :time_received, 4, type: Google.Protobuf.Timestamp, json_name: "timeReceived"
  field :file_name, 5, type: :string, json_name: "fileName"
  field :file_ext, 6, type: :string, json_name: "fileExt"
  field :uri, 7, type: :string
  field :annotations, 8, type: Viam.App.Data.V1.Annotations
  field :dataset_ids, 9, repeated: true, type: :string, json_name: "datasetIds"
  field :binary_data_id, 10, type: :string, json_name: "binaryDataId"
  field :file_size_bytes, 11, type: :uint64, json_name: "fileSizeBytes"
end

defmodule Viam.App.Data.V1.DeleteTabularFilter do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.DeleteTabularFilter",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :location_ids, 1, repeated: true, type: :string, json_name: "locationIds"
  field :robot_id, 2, type: :string, json_name: "robotId"
  field :part_id, 3, type: :string, json_name: "partId"
  field :component_type, 4, type: :string, json_name: "componentType"
  field :component_name, 5, type: :string, json_name: "componentName"
  field :method, 6, type: :string
  field :tags_filter, 7, type: Viam.App.Data.V1.TagsFilter, json_name: "tagsFilter"
end

defmodule Viam.App.Data.V1.DeleteTabularDataRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.DeleteTabularDataRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :delete_older_than_days, 2, type: :uint32, json_name: "deleteOlderThanDays"
  field :filter, 3, proto3_optional: true, type: Viam.App.Data.V1.DeleteTabularFilter
end

defmodule Viam.App.Data.V1.DeleteTabularDataResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.DeleteTabularDataResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :deleted_count, 1, type: :uint64, json_name: "deletedCount"
end

defmodule Viam.App.Data.V1.DeleteBinaryDataByFilterRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.DeleteBinaryDataByFilterRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :filter, 1, type: Viam.App.Data.V1.Filter
  field :include_internal_data, 2, type: :bool, json_name: "includeInternalData"
end

defmodule Viam.App.Data.V1.DeleteBinaryDataByFilterResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.DeleteBinaryDataByFilterResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :deleted_count, 1, type: :uint64, json_name: "deletedCount"
end

defmodule Viam.App.Data.V1.DeleteBinaryDataByIDsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.DeleteBinaryDataByIDsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :binary_ids, 2,
    repeated: true,
    type: Viam.App.Data.V1.BinaryID,
    json_name: "binaryIds",
    deprecated: true

  field :binary_data_ids, 3, repeated: true, type: :string, json_name: "binaryDataIds"
end

defmodule Viam.App.Data.V1.DeleteBinaryDataByIDsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.DeleteBinaryDataByIDsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :deleted_count, 1, type: :uint64, json_name: "deletedCount"
end

defmodule Viam.App.Data.V1.AddTagsToBinaryDataByIDsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.AddTagsToBinaryDataByIDsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :binary_ids, 3,
    repeated: true,
    type: Viam.App.Data.V1.BinaryID,
    json_name: "binaryIds",
    deprecated: true

  field :binary_data_ids, 4, repeated: true, type: :string, json_name: "binaryDataIds"
  field :tags, 2, repeated: true, type: :string
end

defmodule Viam.App.Data.V1.AddTagsToBinaryDataByIDsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.AddTagsToBinaryDataByIDsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Data.V1.AddTagsToBinaryDataByFilterRequest do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.app.data.v1.AddTagsToBinaryDataByFilterRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :filter, 1, type: Viam.App.Data.V1.Filter
  field :tags, 2, repeated: true, type: :string
end

defmodule Viam.App.Data.V1.AddTagsToBinaryDataByFilterResponse do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.app.data.v1.AddTagsToBinaryDataByFilterResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Data.V1.RemoveTagsFromBinaryDataByIDsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.RemoveTagsFromBinaryDataByIDsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :binary_ids, 3,
    repeated: true,
    type: Viam.App.Data.V1.BinaryID,
    json_name: "binaryIds",
    deprecated: true

  field :binary_data_ids, 4, repeated: true, type: :string, json_name: "binaryDataIds"
  field :tags, 2, repeated: true, type: :string
end

defmodule Viam.App.Data.V1.RemoveTagsFromBinaryDataByIDsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.RemoveTagsFromBinaryDataByIDsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :deleted_count, 1, type: :uint64, json_name: "deletedCount"
end

defmodule Viam.App.Data.V1.RemoveTagsFromBinaryDataByFilterRequest do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.app.data.v1.RemoveTagsFromBinaryDataByFilterRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :filter, 1, type: Viam.App.Data.V1.Filter
  field :tags, 2, repeated: true, type: :string
end

defmodule Viam.App.Data.V1.RemoveTagsFromBinaryDataByFilterResponse do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.app.data.v1.RemoveTagsFromBinaryDataByFilterResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :deleted_count, 1, type: :uint64, json_name: "deletedCount"
end

defmodule Viam.App.Data.V1.TagsByFilterRequest do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.app.data.v1.TagsByFilterRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :filter, 1, type: Viam.App.Data.V1.Filter
end

defmodule Viam.App.Data.V1.TagsByFilterResponse do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.app.data.v1.TagsByFilterResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :tags, 1, repeated: true, type: :string
end

defmodule Viam.App.Data.V1.AddBoundingBoxToImageByIDRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.AddBoundingBoxToImageByIDRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :binary_id, 7, type: Viam.App.Data.V1.BinaryID, json_name: "binaryId", deprecated: true
  field :binary_data_id, 8, type: :string, json_name: "binaryDataId"
  field :label, 2, type: :string
  field :x_min_normalized, 3, type: :double, json_name: "xMinNormalized"
  field :y_min_normalized, 4, type: :double, json_name: "yMinNormalized"
  field :x_max_normalized, 5, type: :double, json_name: "xMaxNormalized"
  field :y_max_normalized, 6, type: :double, json_name: "yMaxNormalized"
  field :confidence, 9, proto3_optional: true, type: :double
end

defmodule Viam.App.Data.V1.AddBoundingBoxToImageByIDResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.AddBoundingBoxToImageByIDResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :bbox_id, 1, type: :string, json_name: "bboxId"
end

defmodule Viam.App.Data.V1.RemoveBoundingBoxFromImageByIDRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.RemoveBoundingBoxFromImageByIDRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :binary_id, 3, type: Viam.App.Data.V1.BinaryID, json_name: "binaryId", deprecated: true
  field :binary_data_id, 4, type: :string, json_name: "binaryDataId"
  field :bbox_id, 2, type: :string, json_name: "bboxId"
end

defmodule Viam.App.Data.V1.RemoveBoundingBoxFromImageByIDResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.RemoveBoundingBoxFromImageByIDResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Data.V1.UpdateBoundingBoxRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.UpdateBoundingBoxRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :binary_id, 1, type: Viam.App.Data.V1.BinaryID, json_name: "binaryId", deprecated: true
  field :binary_data_id, 8, type: :string, json_name: "binaryDataId"
  field :bbox_id, 2, type: :string, json_name: "bboxId"
  field :label, 3, proto3_optional: true, type: :string
  field :x_min_normalized, 4, proto3_optional: true, type: :double, json_name: "xMinNormalized"
  field :y_min_normalized, 5, proto3_optional: true, type: :double, json_name: "yMinNormalized"
  field :x_max_normalized, 6, proto3_optional: true, type: :double, json_name: "xMaxNormalized"
  field :y_max_normalized, 7, proto3_optional: true, type: :double, json_name: "yMaxNormalized"
  field :confidence, 9, proto3_optional: true, type: :double
end

defmodule Viam.App.Data.V1.UpdateBoundingBoxResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.UpdateBoundingBoxResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Data.V1.BoundingBoxLabelsByFilterRequest do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.app.data.v1.BoundingBoxLabelsByFilterRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :filter, 1, type: Viam.App.Data.V1.Filter
end

defmodule Viam.App.Data.V1.BoundingBoxLabelsByFilterResponse do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.app.data.v1.BoundingBoxLabelsByFilterResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :labels, 1, repeated: true, type: :string
end

defmodule Viam.App.Data.V1.ConfigureDatabaseUserRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.ConfigureDatabaseUserRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :password, 2, type: :string
end

defmodule Viam.App.Data.V1.ConfigureDatabaseUserResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.ConfigureDatabaseUserResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Data.V1.GetDatabaseConnectionRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.GetDatabaseConnectionRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
end

defmodule Viam.App.Data.V1.GetDatabaseConnectionResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.GetDatabaseConnectionResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :hostname, 1, type: :string
  field :mongodb_uri, 2, type: :string, json_name: "mongodbUri"
  field :has_database_user, 3, type: :bool, json_name: "hasDatabaseUser"
end

defmodule Viam.App.Data.V1.AddBinaryDataToDatasetByIDsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.AddBinaryDataToDatasetByIDsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :binary_ids, 1,
    repeated: true,
    type: Viam.App.Data.V1.BinaryID,
    json_name: "binaryIds",
    deprecated: true

  field :binary_data_ids, 3, repeated: true, type: :string, json_name: "binaryDataIds"
  field :dataset_id, 2, type: :string, json_name: "datasetId"
end

defmodule Viam.App.Data.V1.AddBinaryDataToDatasetByIDsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.AddBinaryDataToDatasetByIDsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Data.V1.RemoveBinaryDataFromDatasetByIDsRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.RemoveBinaryDataFromDatasetByIDsRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :binary_ids, 1,
    repeated: true,
    type: Viam.App.Data.V1.BinaryID,
    json_name: "binaryIds",
    deprecated: true

  field :binary_data_ids, 3, repeated: true, type: :string, json_name: "binaryDataIds"
  field :dataset_id, 2, type: :string, json_name: "datasetId"
end

defmodule Viam.App.Data.V1.RemoveBinaryDataFromDatasetByIDsResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.RemoveBinaryDataFromDatasetByIDsResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Data.V1.CreateIndexRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.CreateIndexRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"

  field :collection_type, 2,
    type: Viam.App.Data.V1.IndexableCollection,
    json_name: "collectionType",
    enum: true

  field :pipeline_name, 3, proto3_optional: true, type: :string, json_name: "pipelineName"
  field :index_spec, 4, repeated: true, type: :bytes, json_name: "indexSpec"
end

defmodule Viam.App.Data.V1.CreateIndexResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.CreateIndexResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Data.V1.DeleteIndexRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.DeleteIndexRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"

  field :collection_type, 2,
    type: Viam.App.Data.V1.IndexableCollection,
    json_name: "collectionType",
    enum: true

  field :pipeline_name, 3, proto3_optional: true, type: :string, json_name: "pipelineName"
  field :index_name, 4, type: :string, json_name: "indexName"
end

defmodule Viam.App.Data.V1.DeleteIndexResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.DeleteIndexResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Data.V1.ListIndexesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.ListIndexesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"

  field :collection_type, 2,
    type: Viam.App.Data.V1.IndexableCollection,
    json_name: "collectionType",
    enum: true

  field :pipeline_name, 3, proto3_optional: true, type: :string, json_name: "pipelineName"
end

defmodule Viam.App.Data.V1.ListIndexesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.ListIndexesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :indexes, 1, repeated: true, type: Viam.App.Data.V1.Index
end

defmodule Viam.App.Data.V1.Index do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.Index",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :collection_type, 1,
    type: Viam.App.Data.V1.IndexableCollection,
    json_name: "collectionType",
    enum: true

  field :pipeline_name, 2, proto3_optional: true, type: :string, json_name: "pipelineName"
  field :index_name, 3, type: :string, json_name: "indexName"
  field :index_spec, 4, repeated: true, type: :bytes, json_name: "indexSpec"
  field :created_by, 5, type: Viam.App.Data.V1.IndexCreator, json_name: "createdBy", enum: true
end

defmodule Viam.App.Data.V1.CreateSavedQueryRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.CreateSavedQueryRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :name, 2, type: :string
  field :mql_binary, 3, repeated: true, type: :bytes, json_name: "mqlBinary"
end

defmodule Viam.App.Data.V1.CreateSavedQueryResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.CreateSavedQueryResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.Data.V1.Query do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.Query",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :organization_id, 2, type: :string, json_name: "organizationId"
  field :name, 3, type: :string
  field :mql_binary, 4, repeated: true, type: :bytes, json_name: "mqlBinary"
  field :created_on, 5, type: Google.Protobuf.Timestamp, json_name: "createdOn"
  field :updated_at, 6, type: Google.Protobuf.Timestamp, json_name: "updatedAt"
end

defmodule Viam.App.Data.V1.DeleteSavedQueryRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.DeleteSavedQueryRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.Data.V1.DeleteSavedQueryResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.DeleteSavedQueryResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Data.V1.GetSavedQueryRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.GetSavedQueryRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
end

defmodule Viam.App.Data.V1.GetSavedQueryResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.GetSavedQueryResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :saved_query, 1, type: Viam.App.Data.V1.Query, json_name: "savedQuery"
end

defmodule Viam.App.Data.V1.UpdateSavedQueryRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.UpdateSavedQueryRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string
  field :name, 2, type: :string
  field :mql_binary, 3, repeated: true, type: :bytes, json_name: "mqlBinary"
end

defmodule Viam.App.Data.V1.UpdateSavedQueryResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.UpdateSavedQueryResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.App.Data.V1.ListSavedQueriesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.ListSavedQueriesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :organization_id, 1, type: :string, json_name: "organizationId"
  field :limit, 2, type: :int64
end

defmodule Viam.App.Data.V1.ListSavedQueriesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.ListSavedQueriesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :queries, 1, repeated: true, type: Viam.App.Data.V1.Query
end

defmodule Viam.App.Data.V1.CreateBinaryDataSignedURLRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.CreateBinaryDataSignedURLRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :binary_data_id, 1, type: :string, json_name: "binaryDataId"

  field :expiration_minutes, 2,
    proto3_optional: true,
    type: :uint32,
    json_name: "expirationMinutes"
end

defmodule Viam.App.Data.V1.CreateBinaryDataSignedURLResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.app.data.v1.CreateBinaryDataSignedURLResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :signed_url, 1, type: :string, json_name: "signedUrl"
  field :expires_at, 2, type: Google.Protobuf.Timestamp, json_name: "expiresAt"
end

defmodule Viam.App.Data.V1.DataService.Service do
  @moduledoc false

  use GRPC.Service, name: "viam.app.data.v1.DataService", protoc_gen_elixir_version: "0.16.0"

  rpc :TabularDataByFilter,
      Viam.App.Data.V1.TabularDataByFilterRequest,
      Viam.App.Data.V1.TabularDataByFilterResponse

  rpc :TabularDataBySQL,
      Viam.App.Data.V1.TabularDataBySQLRequest,
      Viam.App.Data.V1.TabularDataBySQLResponse

  rpc :TabularDataByMQL,
      Viam.App.Data.V1.TabularDataByMQLRequest,
      Viam.App.Data.V1.TabularDataByMQLResponse

  rpc :ExportTabularData,
      Viam.App.Data.V1.ExportTabularDataRequest,
      stream(Viam.App.Data.V1.ExportTabularDataResponse)

  rpc :GetLatestTabularData,
      Viam.App.Data.V1.GetLatestTabularDataRequest,
      Viam.App.Data.V1.GetLatestTabularDataResponse

  rpc :BinaryDataByFilter,
      Viam.App.Data.V1.BinaryDataByFilterRequest,
      Viam.App.Data.V1.BinaryDataByFilterResponse

  rpc :BinaryDataByIDs,
      Viam.App.Data.V1.BinaryDataByIDsRequest,
      Viam.App.Data.V1.BinaryDataByIDsResponse

  rpc :DeleteTabularData,
      Viam.App.Data.V1.DeleteTabularDataRequest,
      Viam.App.Data.V1.DeleteTabularDataResponse

  rpc :DeleteBinaryDataByFilter,
      Viam.App.Data.V1.DeleteBinaryDataByFilterRequest,
      Viam.App.Data.V1.DeleteBinaryDataByFilterResponse

  rpc :DeleteBinaryDataByIDs,
      Viam.App.Data.V1.DeleteBinaryDataByIDsRequest,
      Viam.App.Data.V1.DeleteBinaryDataByIDsResponse

  rpc :AddTagsToBinaryDataByIDs,
      Viam.App.Data.V1.AddTagsToBinaryDataByIDsRequest,
      Viam.App.Data.V1.AddTagsToBinaryDataByIDsResponse

  rpc :AddTagsToBinaryDataByFilter,
      Viam.App.Data.V1.AddTagsToBinaryDataByFilterRequest,
      Viam.App.Data.V1.AddTagsToBinaryDataByFilterResponse

  rpc :RemoveTagsFromBinaryDataByIDs,
      Viam.App.Data.V1.RemoveTagsFromBinaryDataByIDsRequest,
      Viam.App.Data.V1.RemoveTagsFromBinaryDataByIDsResponse

  rpc :RemoveTagsFromBinaryDataByFilter,
      Viam.App.Data.V1.RemoveTagsFromBinaryDataByFilterRequest,
      Viam.App.Data.V1.RemoveTagsFromBinaryDataByFilterResponse

  rpc :TagsByFilter, Viam.App.Data.V1.TagsByFilterRequest, Viam.App.Data.V1.TagsByFilterResponse

  rpc :AddBoundingBoxToImageByID,
      Viam.App.Data.V1.AddBoundingBoxToImageByIDRequest,
      Viam.App.Data.V1.AddBoundingBoxToImageByIDResponse

  rpc :RemoveBoundingBoxFromImageByID,
      Viam.App.Data.V1.RemoveBoundingBoxFromImageByIDRequest,
      Viam.App.Data.V1.RemoveBoundingBoxFromImageByIDResponse

  rpc :BoundingBoxLabelsByFilter,
      Viam.App.Data.V1.BoundingBoxLabelsByFilterRequest,
      Viam.App.Data.V1.BoundingBoxLabelsByFilterResponse

  rpc :UpdateBoundingBox,
      Viam.App.Data.V1.UpdateBoundingBoxRequest,
      Viam.App.Data.V1.UpdateBoundingBoxResponse

  rpc :GetDatabaseConnection,
      Viam.App.Data.V1.GetDatabaseConnectionRequest,
      Viam.App.Data.V1.GetDatabaseConnectionResponse

  rpc :ConfigureDatabaseUser,
      Viam.App.Data.V1.ConfigureDatabaseUserRequest,
      Viam.App.Data.V1.ConfigureDatabaseUserResponse

  rpc :AddBinaryDataToDatasetByIDs,
      Viam.App.Data.V1.AddBinaryDataToDatasetByIDsRequest,
      Viam.App.Data.V1.AddBinaryDataToDatasetByIDsResponse

  rpc :RemoveBinaryDataFromDatasetByIDs,
      Viam.App.Data.V1.RemoveBinaryDataFromDatasetByIDsRequest,
      Viam.App.Data.V1.RemoveBinaryDataFromDatasetByIDsResponse

  rpc :CreateIndex, Viam.App.Data.V1.CreateIndexRequest, Viam.App.Data.V1.CreateIndexResponse

  rpc :ListIndexes, Viam.App.Data.V1.ListIndexesRequest, Viam.App.Data.V1.ListIndexesResponse

  rpc :DeleteIndex, Viam.App.Data.V1.DeleteIndexRequest, Viam.App.Data.V1.DeleteIndexResponse

  rpc :CreateSavedQuery,
      Viam.App.Data.V1.CreateSavedQueryRequest,
      Viam.App.Data.V1.CreateSavedQueryResponse

  rpc :UpdateSavedQuery,
      Viam.App.Data.V1.UpdateSavedQueryRequest,
      Viam.App.Data.V1.UpdateSavedQueryResponse

  rpc :GetSavedQuery,
      Viam.App.Data.V1.GetSavedQueryRequest,
      Viam.App.Data.V1.GetSavedQueryResponse

  rpc :DeleteSavedQuery,
      Viam.App.Data.V1.DeleteSavedQueryRequest,
      Viam.App.Data.V1.DeleteSavedQueryResponse

  rpc :ListSavedQueries,
      Viam.App.Data.V1.ListSavedQueriesRequest,
      Viam.App.Data.V1.ListSavedQueriesResponse

  rpc :CreateBinaryDataSignedURL,
      Viam.App.Data.V1.CreateBinaryDataSignedURLRequest,
      Viam.App.Data.V1.CreateBinaryDataSignedURLResponse
end

defmodule Viam.App.Data.V1.DataService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.App.Data.V1.DataService.Service
end
