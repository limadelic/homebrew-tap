class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.101"

  url "https://github.com/limadelic/el/releases/download/v0.1.101/el-0.1.101.tar.gz"
  sha256 "e0debd129b7e7f5fff507713441dcafb4e089caad1c3f4467c15604ff91e2dc3"

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
