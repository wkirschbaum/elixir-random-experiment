defmodule Random.SettignsTest do
  use ExUnit.Case

  test "adds and updates" do
    result = Random.Settings.get("something")
    assert result == nil

    Random.Settings.update("something", "again")
    result = Random.Settings.get("something")
    assert result == "again"

    result = Random.Settings.update("something", "else")
    result = Random.Settings.get("something")
    assert result == "else"
  end
end
