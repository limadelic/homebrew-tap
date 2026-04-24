class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.60"

  url "https://github.com/limadelic/el/releases/download/v0.1.60/el-0.1.60.tar.gz"
  sha256 "3c5af754813df5f3b5528f5d297af595933ecfc919f77890486dd4f57ed64b97"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
