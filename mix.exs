defmodule Camera.MixProject do
  use Mix.Project

  def project do
    [
      app: :camera,
      version: "0.1.0",
      elixir: "~> 1.6-dev",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end
  
  def application do
    [
      extra_applications: [:logger],
      mod: {Camera.Application, []}
    ]
  end

  defp deps do
    [
      {:picam, "~> 0.1.0", only: :prod},
      {:dummy_nerves, path: "../dummy_nerves", only: [:dev, :test]}
    ]
  end
end
