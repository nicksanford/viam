defmodule ViamSdk.Robot do
  @moduledoc """
  A GenServer representing a connection to a Viam robot.

  Manages a gRPC channel to a running `viam-server` instance and exposes
  the robot's component APIs. Typically started via `ViamSdk.connect/2`, which
  places the process under `ViamSdk.RobotSupervisor`. Advanced users may add
  `{ViamSdk.Robot, opts}` directly to their own supervision tree.

  ## Options

    * `:address` - required. The `"host:port"` address of the viam-server gRPC endpoint.
    * `:name` - optional. A registered name for the process (atom or via-tuple).

  ## Example

      {:ok, robot} = ViamSdk.connect("localhost:8080", transport: :grpc)
      {:ok, names} = ViamSdk.Robot.resource_names(robot)
  """

  use GenServer

  alias Viam.Robot.V1.{RobotService, ResourceNamesRequest}
  alias Viam.Component.Sensor.V1.SensorService
  alias Viam.Common.V1.GetReadingsRequest

  @type t :: pid() | atom() | {:via, module(), term()}
  @type resource_name :: Viam.Common.V1.ResourceName.t()
  @type readings :: %{String.t() => term()}

  # ---------------------------------------------------------------------------
  # Public API
  # ---------------------------------------------------------------------------

  @doc """
  Starts a `ViamSdk.Robot` process linked to the caller.

  ## Options

    * `:address` - required. `"host:port"` of the viam-server.
    * `:name` - optional. Registered name for this process.
  """
  @spec start_link(keyword()) :: GenServer.on_start()
  def start_link(opts) do
    {name_opts, init_opts} = Keyword.split(opts, [:name])
    GenServer.start_link(__MODULE__, init_opts, name_opts)
  end

  @doc """
  Returns the list of resources (components and services) available on the robot.
  """
  @spec resource_names(t()) :: {:ok, [resource_name()]} | {:error, term()}
  def resource_names(robot) do
    GenServer.call(robot, :resource_names)
  end

  @doc """
  Returns the sensor readings for the named sensor component.

  The readings are returned as a plain map with string keys, with values
  decoded from `google.protobuf.Value` into native Elixir types.
  """
  @spec get_readings(t(), String.t()) :: {:ok, readings()} | {:error, term()}
  def get_readings(robot, sensor_name) when is_binary(sensor_name) do
    GenServer.call(robot, {:get_readings, sensor_name})
  end

  # ---------------------------------------------------------------------------
  # GenServer callbacks
  # ---------------------------------------------------------------------------

  @impl true
  def init(opts) do
    address = Keyword.fetch!(opts, :address)

    case GRPC.Stub.connect(address) do
      {:ok, channel} -> {:ok, %{channel: channel, address: address}}
      {:error, reason} -> {:stop, reason}
    end
  end

  @impl true
  def handle_call(:resource_names, _from, %{channel: channel} = state) do
    result =
      case RobotService.Stub.resource_names(channel, %ResourceNamesRequest{}) do
        {:ok, response} -> {:ok, response.resources}
        {:error, reason} -> {:error, reason}
      end

    {:reply, result, state}
  end

  def handle_call({:get_readings, sensor_name}, _from, %{channel: channel} = state) do
    request = %GetReadingsRequest{name: sensor_name}

    result =
      case SensorService.Stub.get_readings(channel, request) do
        {:ok, response} ->
          readings = Map.new(response.readings, fn {k, v} -> {k, decode_value(v)} end)
          {:ok, readings}

        {:error, reason} ->
          {:error, reason}
      end

    {:reply, result, state}
  end

  @impl true
  def terminate(_reason, %{channel: channel}) do
    GRPC.Stub.disconnect(channel)
    :ok
  end

  # ---------------------------------------------------------------------------
  # Helpers
  # ---------------------------------------------------------------------------

  # Decodes a google.protobuf.Value into a native Elixir type.
  defp decode_value(%Google.Protobuf.Value{kind: {:null_value, _}}), do: nil
  defp decode_value(%Google.Protobuf.Value{kind: {:number_value, n}}), do: n
  defp decode_value(%Google.Protobuf.Value{kind: {:string_value, s}}), do: s
  defp decode_value(%Google.Protobuf.Value{kind: {:bool_value, b}}), do: b

  defp decode_value(%Google.Protobuf.Value{kind: {:struct_value, %Google.Protobuf.Struct{fields: fields}}}) do
    Map.new(fields, fn {k, v} -> {k, decode_value(v)} end)
  end

  defp decode_value(%Google.Protobuf.Value{kind: {:list_value, %Google.Protobuf.ListValue{values: values}}}) do
    Enum.map(values, &decode_value/1)
  end

  defp decode_value(_), do: nil
end
