defmodule ViamSdkTest do
  use ExUnit.Case
  doctest ViamSdk

  test "greets the world" do
    assert ViamSdk.hello() == :world
  end
end
