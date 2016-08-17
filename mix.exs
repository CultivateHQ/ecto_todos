defmodule Todos.Mixfile do
  use Mix.Project

  def project do
    [app: :todos,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  def application do
    [applications: [:logger, :ecto, :postgrex],
     mod: {Todos, []}]
  end

  defp deps do
    [
      {:ecto, "~> 2.0.4"},
      {:postgrex, ">= 0.0.0"},
    ]
  end
end
