class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.46"

  url "https://github.com/limadelic/el/releases/download/v0.1.46/el-0.1.46.tar.gz"
  sha256 "564a1f81c3752b3a8c400e634992b7bc697965ea3a43d990e3ebea1050708bf8"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
