defmodule Viam.Service.Motion.V1.PlanState do
  @moduledoc false

  use Protobuf,
    enum: true,
    full_name: "viam.service.motion.v1.PlanState",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :PLAN_STATE_UNSPECIFIED, 0
  field :PLAN_STATE_IN_PROGRESS, 1
  field :PLAN_STATE_STOPPED, 2
  field :PLAN_STATE_SUCCEEDED, 3
  field :PLAN_STATE_FAILED, 4
end

defmodule Viam.Service.Motion.V1.MoveRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.MoveRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :destination, 2, type: Viam.Common.V1.PoseInFrame

  field :component_name_deprecated, 3,
    type: Viam.Common.V1.ResourceName,
    json_name: "componentNameDeprecated",
    deprecated: true

  field :world_state, 4,
    proto3_optional: true,
    type: Viam.Common.V1.WorldState,
    json_name: "worldState"

  field :constraints, 5, proto3_optional: true, type: Viam.Service.Motion.V1.Constraints
  field :component_name, 6, type: :string, json_name: "componentName"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Motion.V1.MoveResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.MoveResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :success, 1, type: :bool
end

defmodule Viam.Service.Motion.V1.MoveOnMapRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.MoveOnMapRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :destination, 2, type: Viam.Common.V1.Pose

  field :component_name_deprecated, 3,
    type: Viam.Common.V1.ResourceName,
    json_name: "componentNameDeprecated",
    deprecated: true

  field :slam_service_name_deprecated, 4,
    type: Viam.Common.V1.ResourceName,
    json_name: "slamServiceNameDeprecated",
    deprecated: true

  field :motion_configuration, 5,
    proto3_optional: true,
    type: Viam.Service.Motion.V1.MotionConfiguration,
    json_name: "motionConfiguration"

  field :obstacles, 6, repeated: true, type: Viam.Common.V1.Geometry
  field :component_name, 7, type: :string, json_name: "componentName"
  field :slam_service_name, 8, type: :string, json_name: "slamServiceName"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Motion.V1.MoveOnMapResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.MoveOnMapResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :execution_id, 1, type: :string, json_name: "executionId"
end

defmodule Viam.Service.Motion.V1.ObstacleDetector do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.ObstacleDetector",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :vision_service_deprecated, 1,
    type: Viam.Common.V1.ResourceName,
    json_name: "visionServiceDeprecated",
    deprecated: true

  field :camera_deprecated, 2,
    type: Viam.Common.V1.ResourceName,
    json_name: "cameraDeprecated",
    deprecated: true

  field :vision_service, 3, type: :string, json_name: "visionService"
  field :camera, 4, type: :string
end

defmodule Viam.Service.Motion.V1.MotionConfiguration do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.MotionConfiguration",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :obstacle_detectors, 1,
    repeated: true,
    type: Viam.Service.Motion.V1.ObstacleDetector,
    json_name: "obstacleDetectors"

  field :position_polling_frequency_hz, 2,
    proto3_optional: true,
    type: :double,
    json_name: "positionPollingFrequencyHz"

  field :obstacle_polling_frequency_hz, 3,
    proto3_optional: true,
    type: :double,
    json_name: "obstaclePollingFrequencyHz"

  field :plan_deviation_m, 4, proto3_optional: true, type: :double, json_name: "planDeviationM"
  field :linear_m_per_sec, 5, proto3_optional: true, type: :double, json_name: "linearMPerSec"

  field :angular_degs_per_sec, 6,
    proto3_optional: true,
    type: :double,
    json_name: "angularDegsPerSec"
end

defmodule Viam.Service.Motion.V1.MoveOnGlobeRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.MoveOnGlobeRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :destination, 2, type: Viam.Common.V1.GeoPoint
  field :heading, 3, proto3_optional: true, type: :double

  field :component_name_deprecated, 4,
    type: Viam.Common.V1.ResourceName,
    json_name: "componentNameDeprecated",
    deprecated: true

  field :movement_sensor_name_deprecated, 5,
    type: Viam.Common.V1.ResourceName,
    json_name: "movementSensorNameDeprecated",
    deprecated: true

  field :obstacles, 6, repeated: true, type: Viam.Common.V1.GeoGeometry

  field :motion_configuration, 7,
    proto3_optional: true,
    type: Viam.Service.Motion.V1.MotionConfiguration,
    json_name: "motionConfiguration"

  field :bounding_regions, 8,
    repeated: true,
    type: Viam.Common.V1.GeoGeometry,
    json_name: "boundingRegions"

  field :component_name, 9, type: :string, json_name: "componentName"
  field :movement_sensor_name, 10, type: :string, json_name: "movementSensorName"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Motion.V1.MoveOnGlobeResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.MoveOnGlobeResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :execution_id, 1, type: :string, json_name: "executionId"
end

defmodule Viam.Service.Motion.V1.GetPoseRequest do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.service.motion.v1.GetPoseRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string

  field :component_name_deprecated, 2,
    type: Viam.Common.V1.ResourceName,
    json_name: "componentNameDeprecated",
    deprecated: true

  field :destination_frame, 3, type: :string, json_name: "destinationFrame"

  field :supplemental_transforms, 4,
    repeated: true,
    type: Viam.Common.V1.Transform,
    json_name: "supplementalTransforms"

  field :component_name, 5, type: :string, json_name: "componentName"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Motion.V1.GetPoseResponse do
  @moduledoc false

  use Protobuf,
    deprecated: true,
    full_name: "viam.service.motion.v1.GetPoseResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :pose, 1, type: Viam.Common.V1.PoseInFrame
end

defmodule Viam.Service.Motion.V1.StopPlanRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.StopPlanRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string

  field :component_name_deprecated, 2,
    type: Viam.Common.V1.ResourceName,
    json_name: "componentNameDeprecated",
    deprecated: true

  field :component_name, 3, type: :string, json_name: "componentName"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Motion.V1.StopPlanResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.StopPlanResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3
end

defmodule Viam.Service.Motion.V1.ListPlanStatusesRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.ListPlanStatusesRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string
  field :only_active_plans, 2, type: :bool, json_name: "onlyActivePlans"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Motion.V1.ListPlanStatusesResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.ListPlanStatusesResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :plan_statuses_with_ids, 1,
    repeated: true,
    type: Viam.Service.Motion.V1.PlanStatusWithID,
    json_name: "planStatusesWithIds"
end

defmodule Viam.Service.Motion.V1.GetPlanRequest do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.GetPlanRequest",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :name, 1, type: :string

  field :component_name_deprecated, 2,
    type: Viam.Common.V1.ResourceName,
    json_name: "componentNameDeprecated",
    deprecated: true

  field :last_plan_only, 3, type: :bool, json_name: "lastPlanOnly"
  field :execution_id, 4, proto3_optional: true, type: :string, json_name: "executionId"
  field :component_name, 5, type: :string, json_name: "componentName"
  field :extra, 99, type: Google.Protobuf.Struct
end

defmodule Viam.Service.Motion.V1.GetPlanResponse do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.GetPlanResponse",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :current_plan_with_status, 1,
    type: Viam.Service.Motion.V1.PlanWithStatus,
    json_name: "currentPlanWithStatus"

  field :replan_history, 2,
    repeated: true,
    type: Viam.Service.Motion.V1.PlanWithStatus,
    json_name: "replanHistory"
end

defmodule Viam.Service.Motion.V1.Constraints do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.Constraints",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :linear_constraint, 1,
    repeated: true,
    type: Viam.Service.Motion.V1.LinearConstraint,
    json_name: "linearConstraint"

  field :orientation_constraint, 2,
    repeated: true,
    type: Viam.Service.Motion.V1.OrientationConstraint,
    json_name: "orientationConstraint"

  field :collision_specification, 3,
    repeated: true,
    type: Viam.Service.Motion.V1.CollisionSpecification,
    json_name: "collisionSpecification"

  field :pseudolinear_constraint, 4,
    repeated: true,
    type: Viam.Service.Motion.V1.PseudolinearConstraint,
    json_name: "pseudolinearConstraint"
end

defmodule Viam.Service.Motion.V1.LinearConstraint do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.LinearConstraint",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :line_tolerance_mm, 1, proto3_optional: true, type: :float, json_name: "lineToleranceMm"

  field :orientation_tolerance_degs, 2,
    proto3_optional: true,
    type: :float,
    json_name: "orientationToleranceDegs"
end

defmodule Viam.Service.Motion.V1.PseudolinearConstraint do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.PseudolinearConstraint",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :line_tolerance_factor, 1,
    proto3_optional: true,
    type: :float,
    json_name: "lineToleranceFactor"

  field :orientation_tolerance_factor, 2,
    proto3_optional: true,
    type: :float,
    json_name: "orientationToleranceFactor"
end

defmodule Viam.Service.Motion.V1.OrientationConstraint do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.OrientationConstraint",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :orientation_tolerance_degs, 1,
    proto3_optional: true,
    type: :float,
    json_name: "orientationToleranceDegs"
end

defmodule Viam.Service.Motion.V1.CollisionSpecification.AllowedFrameCollisions do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.CollisionSpecification.AllowedFrameCollisions",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :frame1, 1, type: :string
  field :frame2, 2, type: :string
end

defmodule Viam.Service.Motion.V1.CollisionSpecification do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.CollisionSpecification",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :allows, 1,
    repeated: true,
    type: Viam.Service.Motion.V1.CollisionSpecification.AllowedFrameCollisions
end

defmodule Viam.Service.Motion.V1.PlanWithStatus do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.PlanWithStatus",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :plan, 1, type: Viam.Service.Motion.V1.Plan
  field :status, 2, type: Viam.Service.Motion.V1.PlanStatus

  field :status_history, 3,
    repeated: true,
    type: Viam.Service.Motion.V1.PlanStatus,
    json_name: "statusHistory"
end

defmodule Viam.Service.Motion.V1.PlanStatusWithID do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.PlanStatusWithID",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :plan_id, 1, type: :string, json_name: "planId"

  field :component_name_deprecated, 2,
    type: Viam.Common.V1.ResourceName,
    json_name: "componentNameDeprecated",
    deprecated: true

  field :execution_id, 3, type: :string, json_name: "executionId"
  field :status, 4, type: Viam.Service.Motion.V1.PlanStatus
  field :component_name, 5, type: :string, json_name: "componentName"
end

defmodule Viam.Service.Motion.V1.PlanStatus do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.PlanStatus",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :state, 1, type: Viam.Service.Motion.V1.PlanState, enum: true
  field :timestamp, 2, type: Google.Protobuf.Timestamp
  field :reason, 3, proto3_optional: true, type: :string
end

defmodule Viam.Service.Motion.V1.Plan do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.Plan",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :id, 1, type: :string

  field :component_name_deprecated, 2,
    type: Viam.Common.V1.ResourceName,
    json_name: "componentNameDeprecated",
    deprecated: true

  field :execution_id, 3, type: :string, json_name: "executionId"
  field :steps, 4, repeated: true, type: Viam.Service.Motion.V1.PlanStep
  field :component_name, 5, type: :string, json_name: "componentName"
end

defmodule Viam.Service.Motion.V1.PlanStep.StepEntry do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.PlanStep.StepEntry",
    map: true,
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :key, 1, type: :string
  field :value, 2, type: Viam.Service.Motion.V1.ComponentState
end

defmodule Viam.Service.Motion.V1.PlanStep do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.PlanStep",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :step, 1, repeated: true, type: Viam.Service.Motion.V1.PlanStep.StepEntry, map: true
end

defmodule Viam.Service.Motion.V1.ComponentState do
  @moduledoc false

  use Protobuf,
    full_name: "viam.service.motion.v1.ComponentState",
    protoc_gen_elixir_version: "0.16.0",
    syntax: :proto3

  field :pose, 1, type: Viam.Common.V1.Pose
end

defmodule Viam.Service.Motion.V1.MotionService.Service do
  @moduledoc false

  use GRPC.Service,
    name: "viam.service.motion.v1.MotionService",
    protoc_gen_elixir_version: "0.16.0"

  rpc :Move, Viam.Service.Motion.V1.MoveRequest, Viam.Service.Motion.V1.MoveResponse

  rpc :MoveOnMap,
      Viam.Service.Motion.V1.MoveOnMapRequest,
      Viam.Service.Motion.V1.MoveOnMapResponse

  rpc :MoveOnGlobe,
      Viam.Service.Motion.V1.MoveOnGlobeRequest,
      Viam.Service.Motion.V1.MoveOnGlobeResponse

  rpc :GetPose, Viam.Service.Motion.V1.GetPoseRequest, Viam.Service.Motion.V1.GetPoseResponse

  rpc :StopPlan, Viam.Service.Motion.V1.StopPlanRequest, Viam.Service.Motion.V1.StopPlanResponse

  rpc :ListPlanStatuses,
      Viam.Service.Motion.V1.ListPlanStatusesRequest,
      Viam.Service.Motion.V1.ListPlanStatusesResponse

  rpc :GetPlan, Viam.Service.Motion.V1.GetPlanRequest, Viam.Service.Motion.V1.GetPlanResponse

  rpc :DoCommand, Viam.Common.V1.DoCommandRequest, Viam.Common.V1.DoCommandResponse

  rpc :GetStatus, Viam.Common.V1.GetStatusRequest, Viam.Common.V1.GetStatusResponse
end

defmodule Viam.Service.Motion.V1.MotionService.Stub do
  @moduledoc false

  use GRPC.Stub, service: Viam.Service.Motion.V1.MotionService.Service
end
