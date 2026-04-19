class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.13"

  url "https://github.com/limadelic/el/releases/download/v0.1.13/el_macos_arm64"
  sha256 "a8ac6219425d9ed17b03b86957ef2ca2caf38d2fa198217222cddbcb65d98cff"

  def install
    bin.install "el_macos_arm64" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
