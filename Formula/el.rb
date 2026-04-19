class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/limadelic/el/releases/download/v0.1.2/el_macos_arm64"
      sha256 "c9fb8e177dc66365fd4ea75c4fe9f897fbe7f7cf9721077f8bdf3a122a8f3d13"
    end
    on_intel do
      url "https://github.com/limadelic/el/releases/download/v0.1.2/el_macos_x86_64"
      sha256 "05e9ea58646e5cb4920a9616cb7d91ae29a3ed50b43efac0a1d4d36b024838e0"
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
