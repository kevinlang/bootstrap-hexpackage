defmodule Bootstrap.MixProject do
  use Mix.Project

  @url "https://github.com/kevinlang/bootstrap-elixir"

  def project do
    [
      app: :bootstrap,
      version: "5.1.0",
      elixir: "~> 1.8",
      name: "Bootstrap",
      description: "Bootstrap Sass and Javascript files for easy use with esbuild and dart_sass",
      deps: deps(),
      package: package(),
      docs: docs()
    ]
  end

  defp deps() do
    [
      {:ex_doc, "~> 0.21", only: :docs}
    ]
  end

  defp package()do
    %{
      licenses: ["MIT"],
      maintainers: ["Kevin Lang"],
      links: %{"GitHub" => @url},
      files: ~w(mix.exs package.json LICENSE README.md *.scss scss js)
    }
  end

  defp docs() do
    [
      extras: [
        "README.md"
      ],
      main: "readme"
    ]
  end
end
