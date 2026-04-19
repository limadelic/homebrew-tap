class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.12"

  url "https://github.com/limadelic/el/releases/download/v0.1.12/el_macos_arm64"
  sha256 "9b0743437fb0a9be290947de41531234feb51f543609a067e294aba168c30f45"

  def install
    bin.install "el_macos_arm64" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
