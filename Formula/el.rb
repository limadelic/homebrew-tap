class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.93"

  url "https://github.com/limadelic/el/releases/download/v0.1.93/el-0.1.93.tar.gz"
  sha256 "0fedec148c5370e5888c4528134bf5b93486435f39a4dc0f57d3ecf10ab99034"

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
