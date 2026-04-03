defmodule ViamSdk do
  @moduledoc """
  Elixir SDK for [Viam](https://www.viam.com) — a robotics platform.

  Provides a client for connecting to a running `viam-server` instance and
  interacting with its components (sensors, motors, cameras, etc.) via gRPC.

  ## Quick start

      {:ok, robot} = ViamSdk.connect("localhost:8080", transport: :grpc)
      {:ok, names} = ViamSdk.resource_names(robot)
      {:ok, data}  = ViamSdk.get_readings(robot, "my-sensor")

  ## Transports

    * `:grpc` — Direct gRPC over TCP. Use this for local `viam-server` instances.
    * `:webrtc` — gRPC over WebRTC data channels via Viam cloud signaling. *(Phase 2, not yet implemented)*

  ## Supervision

  `connect/2` starts a `ViamSdk.Robot` GenServer under the SDK's own
  `ViamSdk.RobotSupervisor` (a `DynamicSupervisor`). For full control over
  supervision, add `{ViamSdk.Robot, address: "...", name: :my_robot}` directly
  to your application's supervision tree.
  """

  alias ViamSdk.Robot

  @type robot :: Robot.t()
  @type resource_name :: Robot.resource_name()
  @type readings :: Robot.readings()

  @doc """
  Connects to a viam-server and returns a supervised robot process.

  ## Arguments

    * `uri` — The address of the viam-server, e.g. `"localhost:8080"`.
    * `opts` — Keyword list of options:
      * `:transport` — required. `:grpc` for direct TCP connection.

  ## Examples

      {:ok, robot} = ViamSdk.connect("localhost:8080", transport: :grpc)

  ## Returns

    * `{:ok, pid}` on success.
    * `{:error, reason}` if the connection fails.
  """
  @spec connect(String.t(), keyword()) :: {:ok, robot()} | {:error, term()}
  def connect(uri, opts) when is_binary(uri) and is_list(opts) do
    transport = Keyword.fetch!(opts, :transport)
    do_connect(transport, uri, opts)
  end

  @doc """
  Returns the list of resources (components and services) available on the robot.

  ## Examples

      {:ok, names} = ViamSdk.resource_names(robot)
      # => {:ok, [%Viam.Common.V1.ResourceName{name: "sensor1", ...}, ...]}
  """
  @spec resource_names(robot()) :: {:ok, [resource_name()]} | {:error, term()}
  def resource_names(robot), do: Robot.resource_names(robot)

  @doc """
  Returns the sensor readings for the named sensor component.

  Values are decoded from `google.protobuf.Value` into native Elixir types
  (numbers, strings, booleans, maps, lists, or `nil`).

  ## Examples

      {:ok, data} = ViamSdk.get_readings(robot, "my-sensor")
      # => {:ok, %{"temperature" => 22.5, "humidity" => 60.1}}
  """
  @spec get_readings(robot(), String.t()) :: {:ok, readings()} | {:error, term()}
  def get_readings(robot, sensor_name), do: Robot.get_readings(robot, sensor_name)

  # ---------------------------------------------------------------------------
  # Private – transport dispatch
  # ---------------------------------------------------------------------------

  defp do_connect(:grpc, uri, _opts) do
    DynamicSupervisor.start_child(
      ViamSdk.RobotSupervisor,
      {Robot, address: uri}
    )
  end

  defp do_connect(transport, _uri, _opts) do
    {:error, {:unsupported_transport, transport}}
  end
end
