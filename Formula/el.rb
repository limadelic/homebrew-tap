class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.47"

  url "https://github.com/limadelic/el/releases/download/v0.1.47/el-0.1.47.tar.gz"
  sha256 "7623450beac186a106f8c9867a2ac8338130fe5f19bcd1080e8c6f670d0e6a57"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
