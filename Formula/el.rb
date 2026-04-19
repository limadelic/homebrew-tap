class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.14"

  url "https://github.com/limadelic/el/releases/download/v0.1.14/el_macos_arm64"
  sha256 "e81b56901386fadceef5dd82756c01b8b6ffac82a933f5f4f2377b67a3cf5313"

  def install
    bin.install "el_macos_arm64" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
