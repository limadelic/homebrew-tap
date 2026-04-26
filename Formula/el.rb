class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.86"

  url "https://github.com/limadelic/el/releases/download/v0.1.86/el-0.1.86.tar.gz"
  sha256 "6ac004b1dcfde832b795fa9ed1e2ef9b26511bec9216c3d9d7da3b091d7a2c2d"

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
