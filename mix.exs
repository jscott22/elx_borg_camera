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
      extra_applications: applications(Mix.env),
      mod: {Camera.Application, []}
    ]
  end

  defp applications(env) when env in [:prod, :dev], do: [:picam | general_apps()]
  defp applications(_), do: general_apps()

  defp general_apps, do: [:logger]

  defp deps do
    [
      {:picam, "~> 0.1.0", only: [:prod, :dev]},
      {:dummy_nerves, path: "../dummy_nerves", only: [:host_dev, :test]}
    ]
  end
end
