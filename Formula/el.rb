class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.57"

  url "https://github.com/limadelic/el/releases/download/v0.1.57/el-0.1.57.tar.gz"
  sha256 "8bde4dbf3095d6deeb755dbee15a08ea6481fd40d9ec5adee535e2d9788f7289"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
