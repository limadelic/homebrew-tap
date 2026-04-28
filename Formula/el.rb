class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.99"

  url "https://github.com/limadelic/el/releases/download/v0.1.99/el-0.1.99.tar.gz"
  sha256 "46a4d390547103030a9b8e4d63d65ffd13d59c1864f1cb536ceb40004269cf84"

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
