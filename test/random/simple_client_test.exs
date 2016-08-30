defmodule Random.SimpleClientTest do
  use ExUnit.Case, async: true

  setup do
    bypass = Bypass.open
    Random.Settings.update("simple_client_url", "http://localhost:#{bypass.port}")
    {:ok, bypass: bypass}
  end

  test "it returns the exchange rate", %{bypass: bypass} do
    Bypass.expect bypass, fn conn ->
      Plug.Conn.resp(conn, 200, "19.4")
    end

    assert Random.SimpleClient.get_exchange_rate == "19.4"
  end
end
