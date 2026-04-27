class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.89"

  url "https://github.com/limadelic/el/releases/download/v0.1.89/el-0.1.89.tar.gz"
  sha256 "40a4c1ec4f0a946f177423e6cc78cd89e67590e15775d81b1453722571ad4e88"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  def post_install
    quiet_system libexec/"bin/el", "stop"
  end

  test do
    assert_match "el", shell_output("#{bin}/el 2>&1", 0)
  end
end
