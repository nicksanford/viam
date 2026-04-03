defmodule ViamSdk.Test.FakeRobotServer do
  @moduledoc false

  use GRPC.Server, service: Viam.Robot.V1.RobotService.Service

  alias Viam.Robot.V1.ResourceNamesResponse
  alias Viam.Common.V1.ResourceName

  @fake_resources [
    %ResourceName{namespace: "rdk", type: "component", subtype: "sensor", name: "sensor1"},
    %ResourceName{namespace: "rdk", type: "component", subtype: "motor", name: "motor1"}
  ]

  @spec resource_names(Viam.Robot.V1.ResourceNamesRequest.t(), GRPC.Server.Stream.t()) ::
          ResourceNamesResponse.t()
  def resource_names(_request, _stream) do
    %ResourceNamesResponse{resources: @fake_resources}
  end
end
