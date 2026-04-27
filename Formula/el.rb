class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.88"

  url "https://github.com/limadelic/el/releases/download/v0.1.88/el-0.1.88.tar.gz"
  sha256 "5ade8937f5f9e52e330bb499ce534ad6f7b3921619c5e6eb9ffb799372e7a119"

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
