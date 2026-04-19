class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.14"

  url "https://github.com/limadelic/el/releases/download/v0.1.14/el_macos_arm64"
  sha256 "fd1e81a9e2c58ce2e15a2ae7e3e3088f3beb3ad745fe2f229df96ef33c3ab6eb"

  def install
    bin.install "el_macos_arm64" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
