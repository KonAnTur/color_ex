defmodule ColorExTest do
  use ExUnit.Case
  doctest ColorEx

  import ColorEx

  test "black" do
    assert colorize("black", [front: 30, back: 0, style: 0]) == "\x1b[30mblack\x1b[m"
    assert colorize("black", [front: 90, back: 0, style: 0]) == "\x1b[90mblack\x1b[m"
    assert colorize("black", [front: 90, back: 90, style: 0]) == "\x1b[90;100mblack\x1b[m"
    assert colorize("BOLD", [front: 0, back: 0, style: 1]) == "\x1b[1mBOLD\x1b[m"
  end
end
