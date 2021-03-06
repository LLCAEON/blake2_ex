defmodule Blake2Ex.Mixfile do
  use Mix.Project

  def project do
    [
      app: :blake2_ex,
      version: "1.0.1",
      elixir: "~> 1.4",
      name: "Blake2Ex",
      source_url: "https://github.com/mwmiller/blake2_ex",
      build_embedded: Mix.env() == :prod,
      start_permanent: Mix.env() == :prod,
      description: description(),
      package: package(),
      deps: deps()
    ]
  end

  def application do
    []
  end

  defp deps do
    [
      {:earmark, "~> 1.0", only: :dev},
      {:ex_doc, "~> 0.14", only: :dev},
      {:credo, "~> 0.7", only: [:dev, :test]}
    ]
  end

  defp description do
    """
    BLAKE2 hash functions
    """
  end

  defp package do
    [
      files: ["lib", "mix.exs", "README*", "LICENSE*"],
      maintainers: ["Matt Miller"],
      licenses: ["MIT"],
      links: %{
        "GitHub" => "https://github.com/IvanAnanev/blake2_ex",
        "RFC" => "https://tools.ietf.org/html/rfc7693"
      }
    ]
  end
end
