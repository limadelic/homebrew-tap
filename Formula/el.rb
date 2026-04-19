class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  url "https://github.com/limadelic/el/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "540ddb6176e2e2de8660335ca1c79e776dee2b59cebc2f1cc4a3720853ffe614"
  license "MIT"

  depends_on "erlang" => :runtime
  depends_on "elixir" => :build

  def install
    ENV["MIX_ENV"] = "prod"
    system "mix", "local.hex", "--force"
    system "mix", "local.rebar", "--force"
    system "mix", "deps.get"
    system "mix", "escript.build"
    bin.install "el"
  end

  test do
    output = shell_output("#{bin}/el ls")
    assert_match "Session", output
  end
end
