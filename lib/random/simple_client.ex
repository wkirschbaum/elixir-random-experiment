defmodule Random.SimpleClient do
  use GenServer

  def get_exchange_rate do
    url = Random.Settings.get("simple_client_url")
    case HTTPoison.get(url) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        body
      {:ok, %HTTPoison.Response{status_code: 404}} ->
        "Not found :("
      {:error, %HTTPoison.Error{reason: reason}} ->
        reason
    end
  end
end
