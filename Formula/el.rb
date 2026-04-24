class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.69"

  url "https://github.com/limadelic/el/releases/download/v0.1.69/el-0.1.69.tar.gz"
  sha256 "f8f2c63b87fadf562cd02f0e1d53d6019e5d648bf5282bcff421e04ad3fbcad7"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "el", shell_output("#{bin}/el 2>&1", 0)
  end
end
