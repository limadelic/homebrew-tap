class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.17"

  url "https://github.com/limadelic/el/releases/download/v0.1.17/el_macos_arm64"
  sha256 "78c7aad6f0befe6edbad2bf656c92c476240b2cd8ab338a24aac6f15828d9e84"

  def install
    bin.install "el_macos_arm64" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
