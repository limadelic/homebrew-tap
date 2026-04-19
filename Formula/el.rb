class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.6"

  on_macos do
    on_arm do
      url "https://github.com/limadelic/el/releases/download/v0.1.6/el_macos_arm64"
      sha256 "4c39aa1c6b35baa3299110d78ddca9e2e5cec22278c78dd366c9eb72260a0332"
    end
    on_intel do
      url "https://github.com/limadelic/el/releases/download/v0.1.6/el_macos_x86_64"
      sha256 "f166cead304382a6d2ea8bef73084bbfea80c1372d6d3539bc0ffba99c460b20"
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
