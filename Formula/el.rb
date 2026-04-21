class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.35"

  url "https://github.com/limadelic/el/releases/download/v0.1.35/el_macos_arm64"
  sha256 "a2178b53c20cbc2b37e5a37ac4030d556790e984ac43744ac037623277d8efc3"

  def install
    bin.install "el_macos_arm64" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
