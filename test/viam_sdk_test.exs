defmodule ViamSdkTest do
  use ExUnit.Case, async: true

  test "connect/2 requires :transport option" do
    assert_raise KeyError, fn ->
      ViamSdk.connect("localhost:8080", [])
    end
  end

  test "connect/2 with unsupported transport returns error" do
    assert {:error, {:unsupported_transport, :telnet}} =
             ViamSdk.connect("localhost:8080", transport: :telnet)
  end
end
