defmodule ViamSdk.SensorTest do
  use ExUnit.Case, async: false

  setup_all do
    child_spec = GRPC.Server.Supervisor.child_spec([ViamSdk.Test.FakeSensorServer], 0)
    start_supervised!(child_spec)
    {:ranch_embedded_sup, listener_ref} = child_spec.id
    port = :ranch.get_port(listener_ref)
    {:ok, robot} = ViamSdk.connect("localhost:#{port}", transport: :grpc)
    on_exit(fn -> if Process.alive?(robot), do: GenServer.stop(robot) end)
    {:ok, robot: robot}
  end

  test "get_readings/2 returns a map of decoded values", %{robot: robot} do
    assert {:ok, readings} = ViamSdk.get_readings(robot, "sensor1")
    assert is_map(readings)
    assert readings["a"] == 1.0
    assert readings["b"] == 2.0
    assert readings["c"] == 3.0
  end

  test "get_readings/2 returns maps with string keys", %{robot: robot} do
    assert {:ok, readings} = ViamSdk.get_readings(robot, "any-name")
    assert Enum.all?(Map.keys(readings), &is_binary/1)
  end
end
