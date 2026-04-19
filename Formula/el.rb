class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.9"

  on_macos do
    on_arm do
      url "https://github.com/limadelic/el/releases/download/v0.1.9/el_macos_arm64"
      sha256 "27a06bc0c25be3355a35bf030bc87cb40398f85be18c01e35900d1ef17f572b0"
    end
    on_intel do
      url "https://github.com/limadelic/el/releases/download/v0.1.9/el_macos_x86_64"
      sha256 "2d440f90c3880d25d22482b00bd4c62a5a8cf9028a11f9b30d09c27f39a7356c"
    end
  end

  def install
    binary = Hardware::CPU.arm? ? "el_macos_arm64" : "el_macos_x86_64"
    bin.install binary => "el"
  end

  test do
    output = shell_output("#{bin}/el ls")
    assert_match "Session", output
  end

  livecheck do
    url "https://github.com/limadelic/el/releases"
    regex(/v(\d+(?:\.\d+)*)/i)
    strategy :github_latest
  end
end
