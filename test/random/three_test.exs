defmodule Random.ThreeTest do
  use ExUnit.Case, async: true

  test "three one" do
    Random.Settings.update("test", "three")
    Process.sleep(1_000)
    assert Random.Settings.get("test") == "three"
  end

  test "three two" do
    Random.Settings.update("test", "three two")
    Process.sleep(1_000)
    assert Random.Settings.get("test") == "three two"
  end

  test "three three" do
    Random.Settings.update("test", "three three")
    Process.sleep(1_000)
    assert Random.Settings.get("test") == "three three"
  end

  test "three four" do
    Random.Settings.update("test", "three four")
    Process.sleep(1_000)
    assert Random.Settings.get("test") == "three four"
  end

  test "three five" do
    Random.Settings.update("test", "three five")
    Process.sleep(1_000)
    assert Random.Settings.get("test") == "three five"
  end
end
