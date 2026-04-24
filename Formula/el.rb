class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.68"

  url "https://github.com/limadelic/el/releases/download/v0.1.68/el-0.1.68.tar.gz"
  sha256 "3e3285aba44ddd22a6cfc080268fb53d689e80a940b12ae36d0540896117b840"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "el", shell_output("#{bin}/el 2>&1", 0)
  end
end
