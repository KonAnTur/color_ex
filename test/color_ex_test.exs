defmodule ColorExTest do
  use ExUnit.Case
  doctest ColorEx

  import ColorEx

  test "black" do
    assert ~l"black"30000 == "\x1b[30mblack\x1b[m"
    assert ~l"black"90000 == "\x1b[90mblack\x1b[m"
  end
end
