class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.10"

  url "https://github.com/limadelic/el/releases/download/v0.1.10/el_macos_arm64"
  sha256 "a67caf88ec633323aa7f6eacda8e8f1fc7057dc82b2366273c88d48baedae96f"

  def install
    bin.install "el_macos_arm64" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
