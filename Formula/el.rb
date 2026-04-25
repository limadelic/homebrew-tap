class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.84"

  url "https://github.com/limadelic/el/releases/download/v0.1.84/el-0.1.84.tar.gz"
  sha256 "68a713420a449b4e9daea2a4a5c19096952adbda978d0c880807608e5dc721f9"

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
