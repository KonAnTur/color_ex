defmodule ColorEx do
  @colors [
    30, 31, 32, 33, 34, 35, 36, 37,
    90, 91, 92, 93, 94, 95, 96, 97
  ]
  @styles [1, 2, 3, 4, 5, 6, 7, 8, 9]

  @doc """
    Colorize string

    ## Example

        iex> import ColorEx
        iex> colorize("red", [front: 31, back: 0, style: 0])
        "\e[31mred\e[m"
        iex> colorize("green", [front: 32, back: 0, style: 0])
        "\e[32mgreen\e[m"
        iex> colorize("blue", [front: 34, back: 0, style: 0])
        "\e[34mblue\e[m"

  """
  def colorize(string, [front: front, back: back, style: style])
    when (front in @colors or front == 0) and (back in @colors or back == 0) and (style in @styles or style == 0) do
      "\x1b[#{Enum.join(Enum.filter([front, back + 10, style], fn code -> code != 0 and code != 10 end), ";")}m#{string}\x1b[m"
  end
end
