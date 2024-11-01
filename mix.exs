defmodule ModuleRecompilationSandbox.MixProject do
  use Mix.Project

  def project do
    [
      app: :module_recompilation_sandbox,
      version: "0.1.0",
      elixir: "~> 1.14",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      # See `lib/strategy_2` for an example using Absinthe
      {:absinthe, "~> 1.7.8"}
    ]
  end
end
