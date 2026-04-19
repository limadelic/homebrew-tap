class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/limadelic/el/releases/download/v0.1.0/el_macos_arm64"
      sha256 "5ef582e8847af735d74e8525187143ae1270ae26792b0254880c82499295a123"
    end
    on_intel do
      url "https://github.com/limadelic/el/releases/download/v0.1.0/el_macos_x86_64"
      sha256 "605ed0679cbc4b5a77a665eef03f53764389d6f05e4de3c950e82b2b1ad03efa"
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
end
