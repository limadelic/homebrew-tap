class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.54"

  url "https://github.com/limadelic/el/releases/download/v0.1.54/el-0.1.54.tar.gz"
  sha256 "9432a5f3c93050fc11d727348b6d4e365e9a67af586d163d4d40dee747e71ae6"

  def install
    libexec.install Dir["*"]
    bin.install_symlink libexec/"bin/el_wrapper" => "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end
end
