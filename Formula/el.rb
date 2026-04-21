class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.19"

  url "https://github.com/limadelic/el/releases/download/v0.1.19/el_macos_arm64"
  sha256 "b715da79837cd1503eb0d68740c6701bf602ad183ad03f2fda6c24baff31d7d1"

  def install
    bin.install "el_macos_arm64" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
