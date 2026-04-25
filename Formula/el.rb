class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.72"

  url "https://github.com/limadelic/el/releases/download/v0.1.72/el-0.1.72.tar.gz"
  sha256 "ba6d2a583c2a1e088b37df3a19993da0dc0d4caa52111d5a152da63f1e662f71"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "el", shell_output("#{bin}/el 2>&1", 0)
  end
end
