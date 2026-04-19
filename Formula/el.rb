class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.11"

  url "https://github.com/limadelic/el/releases/download/v0.1.11/el_macos_arm64"
  sha256 "b7d090d8b05cb36c8b764f7b525609859a38d0e5f379fc8d815e186980adbee0"

  def install
    bin.install "el_macos_arm64" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
