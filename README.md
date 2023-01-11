# ColorEx

Function for styling text in the console.

1. Color setting (`front` and `back`) is a number from the [ANSI code table](https://en.wikipedia.org/wiki/ANSI_escape_code#color:~:text=bright%20background%20color-,Colors,-%5Bedit%5D)
2. Style setting (`style`) is a number from 1 to 9. [See table Graphic Rendition](https://en.wikipedia.org/wiki/ANSI_escape_code#color:~:text=bracketed%20paste%20mode.-,SGR%20(Select%20Graphic%20Rendition)%20parameters,-%5Bedit%5D)

## Installation

[available in Hex](https://hex.pm/packages/color_ex):

```elixir
def deps do
  [
    {:color_ex, "~> 0.1.0"}
  ]
end
```

## Example
  iex> import ColorEx
  iex> colorize("red", [front: 31, back: 0, style: 0])
  "\e[31mred\e[m"
  iex> colorize("green", [front: 32, back: 0, style: 0])
  "\e[32mgreen\e[m"
  iex> colorize("blue", [front: 34, back: 0, style: 0])
  "\e[34mblue\e[m"