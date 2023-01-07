defmodule ColorExTest do
  use ExUnit.Case
  doctest ColorEx

  test "greets the world" do
    assert ColorEx.hello() == :world
  end
end
