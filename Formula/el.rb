class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.71"

  url "https://github.com/limadelic/el/releases/download/v0.1.71/el-0.1.71.tar.gz"
  sha256 "54165d78f2052c35726338f832cc71ab9f23affd420f62d8f6f484c5a68424ff"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "el", shell_output("#{bin}/el 2>&1", 0)
  end
end
