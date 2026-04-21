class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.18"

  url "https://github.com/limadelic/el/releases/download/v0.1.18/el_macos_arm64"
  sha256 "9df03add26bd9bf7f859397c0d0b44de6e683a18473fd4c8556f3bf4b8ee8017"

  def install
    bin.install "el_macos_arm64" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
