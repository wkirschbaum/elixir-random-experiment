defmodule Random.Settings do
  use GenServer

  def start_link do
    GenServer.start(__MODULE__, %{}, name: :settings)
  end

  def update(key, value) do
    GenServer.call(:settings, {:update, key: key, value: value})
  end

  def get(key) do
    GenServer.call(:settings, {:get, key})
  end

  def handle_call({:get, key}, _from, state) do
    {:reply, Map.get(state, key), state}
  end

  def handle_call({:update, key: key, value: value}, _from, state) do
    {:reply, :ok, Map.put(state, key, value)}
  end

end
