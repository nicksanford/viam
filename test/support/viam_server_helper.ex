defmodule ViamSdk.Test.ViamServerHelper do
  @moduledoc false
  require Logger

  @config_path Path.expand("../fixtures/fake_robot.json", __DIR__)
  @ready_pattern ~r/"url":"http:\/\/[^:]+:(\d+)"/
  @startup_timeout_ms 10_000

  @doc """
  Starts a real viam-server with the fake robot config and returns the gRPC port.

  Registers an on_exit handler to kill the process after the test case.
  Raises if viam-server does not start within #{@startup_timeout_ms}ms.
  """
  @spec start!() :: {port(), non_neg_integer()}
  def start! do
    port = open_port()
    grpc_port = wait_for_ready(port)

    # Capture the OS PID now, while the port is alive and owned by this process.
    # By the time on_exit runs, the port's owner process will have exited and
    # Port.info/2 would return nil.
    {:os_pid, os_pid} = Port.info(port, :os_pid)

    ExUnit.Callbacks.on_exit(fn -> stop_os_process(os_pid) end)

    {port, grpc_port}
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
      case Port.info(port, :os_pid) do
        {:os_pid, os_pid} -> stop_os_process(os_pid)
        nil -> :ok
      end

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

  @sigterm_timeout_ms 5_000

  defp stop_os_process(os_pid) do
    pid_str = to_string(os_pid)
    System.cmd("kill", ["-TERM", pid_str], stderr_to_stdout: true)

    unless wait_for_os_exit(os_pid, @sigterm_timeout_ms) do
      Logger.warning("viam-server (pid #{os_pid}) did not exit after SIGTERM, sending SIGKILL")
      System.cmd("kill", ["-KILL", pid_str], stderr_to_stdout: true)
    end
  end

  defp wait_for_os_exit(os_pid, timeout_ms) do
    deadline = System.monotonic_time(:millisecond) + timeout_ms
    do_wait(os_pid, deadline)
  end

  defp do_wait(os_pid, deadline) do
    case System.cmd("kill", ["-0", to_string(os_pid)], stderr_to_stdout: true) do
      {_, 0} ->
        if System.monotonic_time(:millisecond) < deadline do
          Process.sleep(100)
          do_wait(os_pid, deadline)
        else
          false
        end

      {_, _} ->
        true
    end
  end
end
