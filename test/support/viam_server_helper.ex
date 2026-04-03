defmodule ViamSdk.Test.ViamServerHelper do
  @moduledoc false

  @config_path Path.expand("../fixtures/fake_robot.json", __DIR__)
  @ready_pattern ~r/"url":"http:\/\/[^:]+:(\d+)"/
  @startup_timeout_ms 10_000

  @doc """
  Starts a real viam-server with the fake robot config and returns the gRPC port.

  Registers an on_exit handler to kill the process after the test case.
  Raises if viam-server does not start within #{@startup_timeout_ms}ms.
  """
  @spec start!() :: non_neg_integer()
  def start! do
    port = open_port()
    grpc_port = wait_for_ready(port)

    ExUnit.Callbacks.on_exit(fn -> stop(port) end)

    grpc_port
  end

  defp open_port do
    Port.open(
      {:spawn_executable, System.find_executable("viam-server")},
      [
        :binary,
        :stderr_to_stdout,
        args: ["-config", @config_path]
      ]
    )
  end

  defp wait_for_ready(port) do
    deadline = System.monotonic_time(:millisecond) + @startup_timeout_ms
    collect_output(port, deadline, "")
  end

  defp collect_output(port, deadline, acc) do
    now = System.monotonic_time(:millisecond)

    if now > deadline do
      Port.close(port)
      raise "viam-server did not start within #{@startup_timeout_ms}ms. Output:\n#{acc}"
    end

    receive do
      {^port, {:data, chunk}} ->
        combined = acc <> chunk

        case Regex.run(@ready_pattern, combined, capture: :all_but_first) do
          [port_str] ->
            String.to_integer(port_str)

          nil ->
            collect_output(port, deadline, combined)
        end
    after
      100 ->
        collect_output(port, deadline, acc)
    end
  end

  defp stop(port) do
    case Port.info(port, :os_pid) do
      {:os_pid, pid} ->
        System.cmd("kill", [to_string(pid)], stderr_to_stdout: true)

      nil ->
        :ok
    end

    # Port closes automatically when the OS process exits; ignore if already closed.
    try do
      Port.close(port)
    rescue
      ArgumentError -> :ok
    end
  end
end
