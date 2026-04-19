class El < Formula
  desc "CLI for managing headless Claude Code sessions"
  homepage "https://github.com/limadelic/el"
  license "MIT"
  version "0.1.9"

  url "https://github.com/limadelic/el/releases/download/v0.1.9-escript/el"
  sha256 "5bf5ef1f854d080e0aa9a834095a311bc16e35219ef080c2feb3c87f20124cca"

  depends_on "erlang"

  def install
    bin.install "el"
  end

  test do
    assert_match "usage", shell_output("#{bin}/el", 0)
  end

  livecheck do
    url "https://github.com/limadelic/el/releases"
    regex(/v(\d+(?:\.\d+)*)/i)
    strategy :github_latest
  end
end
