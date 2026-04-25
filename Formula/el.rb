class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.83"

  url "https://github.com/limadelic/el/releases/download/v0.1.83/el-0.1.83.tar.gz"
  sha256 "096999d651fa6cdcaf0270e36f75456d8f641ce08c4e5e3d6792bdd4bd1e0455"

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
