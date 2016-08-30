defmodule Random.OneTest do
  use ExUnit.Case, async: true

  test "one one" do
    Random.Settings.update("test", "one")
    Process.sleep(1_000)
    assert Random.Settings.get("test") == "one"
  end

  test "one two" do
    Random.Settings.update("test", "one two")
    Process.sleep(1_000)
    assert Random.Settings.get("test") == "one two"
  end

  test "one three" do
    Random.Settings.update("test", "one three")
    Process.sleep(1_000)
    assert Random.Settings.get("test") == "one three"
  end

  test "one four" do
    Random.Settings.update("test", "one four")
    Process.sleep(1_000)
    assert Random.Settings.get("test") == "one four"
  end

  test "one five" do
    Random.Settings.update("test", "one five")
    Process.sleep(1_000)
    assert Random.Settings.get("test") == "one five"
  end
end
