defmodule Random.TwoTest do
  use ExUnit.Case, async: true

  test "two one" do
    Random.Settings.update("test", "two")
    Process.sleep(1_000)
    assert Random.Settings.get("test") == "two"
  end

  test "two two" do
    Random.Settings.update("test", "two two")
    Process.sleep(1_000)
    assert Random.Settings.get("test") == "two two"
  end

  test "two three" do
    Random.Settings.update("test", "two three")
    Process.sleep(1_000)
    assert Random.Settings.get("test") == "two three"
  end

  test "two four" do
    Random.Settings.update("test", "two four")
    Process.sleep(1_000)
    assert Random.Settings.get("test") == "two four"
  end

  test "two five" do
    Random.Settings.update("test", "two five")
    Process.sleep(1_000)
    assert Random.Settings.get("test") == "two five"
  end
end
