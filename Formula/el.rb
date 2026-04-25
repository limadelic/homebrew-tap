class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.81"

  url "https://github.com/limadelic/el/releases/download/v0.1.81/el-0.1.81.tar.gz"
  sha256 "f41a27f6d330a912b5067609a0fb8ee19cce35c8b23545c198abdc8a162d190c"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "el", shell_output("#{bin}/el 2>&1", 0)
  end
end
