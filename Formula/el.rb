class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.43"

  url "https://github.com/limadelic/el/releases/download/v0.1.43/el-0.1.43.tar.gz"
  sha256 "45ad210c863908540ee6b35b3e8a812e6cac4e29ff2ea65a4aa0d5b87e76b056"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
