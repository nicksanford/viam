defmodule ViamSdk.IntegrationTest do
  use ExUnit.Case, async: false

  @moduletag :integration

  alias Viam.Common.V1.ResourceName

  setup_all do
    grpc_port = ViamSdk.Test.ViamServerHelper.start!()
    {:ok, robot} = ViamSdk.connect("localhost:#{grpc_port}", transport: :grpc)
    {:ok, robot: robot}
  end

  describe "resource_names/1" do
    test "returns a non-empty list of ResourceName structs", %{robot: robot} do
      assert {:ok, names} = ViamSdk.resource_names(robot)
      assert is_list(names)
      assert length(names) > 0
      assert Enum.all?(names, &match?(%ResourceName{}, &1))
    end

    test "includes all configured fake components", %{robot: robot} do
      assert {:ok, names} = ViamSdk.resource_names(robot)
      component_names = Enum.map(names, & &1.name)

      for expected <- ~w[sensor1 arm1 motor1 base1 camera1 gripper1 movement_sensor1 power_sensor1] do
        assert expected in component_names,
               "Expected #{expected} in resource names, got: #{inspect(component_names)}"
      end
    end

    test "resource names have rdk namespace and component type", %{robot: robot} do
      assert {:ok, names} = ViamSdk.resource_names(robot)

      components = Enum.filter(names, &(&1.type == "component"))
      assert length(components) > 0
      assert Enum.all?(components, &(&1.namespace == "rdk"))
    end
  end

  describe "get_readings/2" do
    test "returns a map of readings for sensor1", %{robot: robot} do
      assert {:ok, readings} = ViamSdk.get_readings(robot, "sensor1")
      assert is_map(readings)
      assert map_size(readings) > 0
    end

    test "reading values are decoded to Elixir types", %{robot: robot} do
      assert {:ok, readings} = ViamSdk.get_readings(robot, "sensor1")

      Enum.each(readings, fn {key, value} ->
        assert is_binary(key), "Key #{inspect(key)} should be a string"

        assert is_number(value) or is_binary(value) or is_boolean(value) or is_nil(value) or
                 is_map(value) or is_list(value),
               "Value #{inspect(value)} for key #{key} is not a native Elixir type"
      end)
    end
  end
end
