class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/limadelic/el/releases/download/v0.1.0/el_macos_arm64"
      sha256 "TODO_ARM64_SHA256"
    end
    on_intel do
      url "https://github.com/limadelic/el/releases/download/v0.1.0/el_macos_x86_64"
      sha256 "TODO_X86_64_SHA256"
    end
  end

  def install
    binary = Hardware::CPU.arm? ? "el_macos_arm64" : "el_macos_x86_64"
    bin.install binary, as: "el"
  end

  test do
    output = shell_output("#{bin}/el ls")
    assert_match "Session", output
  end
end
