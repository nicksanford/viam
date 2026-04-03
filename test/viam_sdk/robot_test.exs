defmodule ViamSdk.RobotTest do
  use ExUnit.Case, async: false

  alias Viam.Common.V1.ResourceName

  setup_all do
    child_spec = GRPC.Server.Supervisor.child_spec([ViamSdk.Test.FakeRobotServer], 0)
    start_supervised!(child_spec)
    {:ranch_embedded_sup, listener_ref} = child_spec.id
    port = :ranch.get_port(listener_ref)
    robot = start_supervised!({ViamSdk.Robot, address: "localhost:#{port}"})
    {:ok, robot: robot}
  end

  test "connect/2 returns a pid", %{robot: robot} do
    assert is_pid(robot)
  end

  test "resource_names/1 returns a list of ResourceName structs", %{robot: robot} do
    assert {:ok, names} = ViamSdk.resource_names(robot)
    assert is_list(names)
    assert length(names) == 2
    assert Enum.all?(names, &match?(%ResourceName{}, &1))
  end

  test "resource_names/1 returns expected component names", %{robot: robot} do
    assert {:ok, names} = ViamSdk.resource_names(robot)
    name_strings = Enum.map(names, & &1.name)
    assert "sensor1" in name_strings
    assert "motor1" in name_strings
  end

  test "connect/2 with unsupported transport returns error" do
    assert {:error, {:unsupported_transport, :foobar}} =
             ViamSdk.connect("localhost:1234", transport: :foobar)
  end
end
