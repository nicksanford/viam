defmodule ViamSdk.Test.FakeSensorServer do
  @moduledoc false

  use GRPC.Server, service: Viam.Component.Sensor.V1.SensorService.Service

  alias Viam.Common.V1.GetReadingsResponse

  @spec get_readings(Viam.Common.V1.GetReadingsRequest.t(), GRPC.Server.Stream.t()) ::
          GetReadingsResponse.t()
  def get_readings(_request, _stream) do
    %GetReadingsResponse{
      readings: %{
        "a" => %Google.Protobuf.Value{kind: {:number_value, 1.0}},
        "b" => %Google.Protobuf.Value{kind: {:number_value, 2.0}},
        "c" => %Google.Protobuf.Value{kind: {:number_value, 3.0}}
      }
    }
  end
end
