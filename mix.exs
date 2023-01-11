defmodule ColorEx.MixProject do
  use Mix.Project

  def project do
    [
      app: :color_ex,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps(),
      name: "color_ex",
      description: "ANSI coloring in the terminal",
      package: [
        maintainers: ["Konstantin Turov"],
        licenses: ["MIT"],
        links: %{"GitHub" => "https://github.com/KonAnTur/color_ex"}
      ]
    ]
  end

  def application do
    [
      extra_applications: [:logger]
    ]
  end

  defp deps do
    []
  end
end
