defmodule ViamSdk.Test.ServerHelpers do
  @moduledoc false

  @doc """
  Starts a gRPC server on an OS-assigned port and returns `{server_module, port}`.
  Registers a cleanup handler with ExUnit to stop the server after the test.
  """
  def start_server(server_module) do
    {:ok, _pid, port} = GRPC.Server.start(server_module, 0)

    ExUnit.Callbacks.on_exit(fn ->
      GRPC.Server.stop(server_module)
    end)

    {server_module, port}
  end
end
