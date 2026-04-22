class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.39"

  url "https://github.com/limadelic/el/releases/download/v0.1.39/el_macos_arm64"
  sha256 "1d35d47e828b28ded2fbac94dc129ac53a0be85fc9e5a6ff96379fba854992c0"

  def install
    bin.install "el_macos_arm64" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
