defmodule Exthereum.Mixfile do
  use Mix.Project

  def project do
    [app: :exthereum,
     version: "0.1.0",
     elixir: "~> 1.4",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps(),
     elixirc_paths: elixirc_paths(Mix.env)]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [{:poison, "~> 3.1.0"},
     {:credo, "~> 0.8", only: [:dev, :test], runtime: false}]
  end

  defp elixirc_paths(:test), do: ["lib", "test/support"]
  defp elixirc_paths(_), do: ["lib"]
end
