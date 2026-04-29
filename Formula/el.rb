class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.100"

  url "https://github.com/limadelic/el/releases/download/v0.1.100/el-0.1.100.tar.gz"
  sha256 "9cbf4fec96e806d37832c486a681c1c8f6c03c841b56c2de3c113f4cc016e92c"

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
