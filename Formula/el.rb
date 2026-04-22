class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.41"

  url "https://github.com/limadelic/el/releases/download/v0.1.41/el"
  sha256 "0fa25e92309a1057ef78d1e95891358caf3137ade3981dcc21c65e57015a3874"

  def install
    bin.install "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
