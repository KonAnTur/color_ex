defmodule ColorEx do
  @color [
    30, 31, 32, 33, 34, 35, 36, 37,
    90, 91, 92, 93, 94, 95, 96, 97
  ]
  @styles [1, 2, 3, 4, 5, 6, 7, 8, 9]

  @doc """
    Colorize string

    ## Example

        iex> import ColorEx
        iex> ~l"red"31000
        "\e[31mred\e[m"
        iex> ~l"green"32000
        "\e[32mgreen\e[m"
        iex> ~l"blue"34000
        "\e[34mblue\e[m"

  """
  def sigil_l(string, settings) do
    if length(settings) == 5 do
      front = Enum.slice(settings, 0, 2) |> to_string |> String.to_integer
      front = if front in @color, do: front, else: 0
      back = Enum.slice(settings, 2, 2) |> to_string |> String.to_integer
      back = if back in @color, do: back + 10, else: 0
      style = Enum.slice(settings, 4, 1) |> to_string |> String.to_integer
      style = if style in @styles, do: style, else: 0

      colorization(
        string,
        Enum.filter(
          [front, back, style],
          fn x -> x != 0 end
        )
      )
    else
      raise KeyError, message: "the 'settings' number must be 5 digits"
    end
  end


  defp colorization(string, codes) do
    "\x1b[#{Enum.join(codes, ";")}m#{string}\x1b[m"
  end
end
