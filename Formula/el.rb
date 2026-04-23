class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.49"

  url "https://github.com/limadelic/el/releases/download/v0.1.49/el-0.1.49.tar.gz"
  sha256 "e83e2383f7aaa24856bdfab78d6a183a15cdd340ab15e0aafee523690dadd8b5"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
