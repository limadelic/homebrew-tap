class Elita < Formula
  desc "Agentic platform with el CLI"
  homepage "https://github.com/limadelic/elita"
  url "https://github.com/limadelic/elita/archive/refs/tags/v0.0.3.tar.gz"
  sha256 "48ee9bf9bcdac2440e010ad1cde5625b6162e48815ac47d900a25ac9b90ca43c"
  license "MIT"

  depends_on "elixir"

  def install
    build
    libexec.install "apps/el/el"
    pkgshare.install "apps/elita/agents"
    bin.install "ops/brew/el-node"
    wrap
  end

  service do
    run opt_bin / "el-node"
    environment_variables PATH: std_service_path_env
    keep_alive true
    log_path var / "log/elita.log"
    error_log_path var / "log/elita.log"
  end

  test do
    system bin / "el", "help"
  end

  private

  def build
    ENV["MIX_ENV"] = "prod"
    ENV["MIX_HOME"] = buildpath / ".mix"
    ENV["HEX_HOME"] = buildpath / ".hex"
    system "mix", "local.hex", "--force"
    system "mix", "local.rebar", "--force"
    system "mix", "deps.get"
    system "mix", "build"
  end

  def wrap
    (bin / "el").write <<~SH
      #!/bin/bash
      export ELITA_HOME="#{pkgshare}"
      exec "#{libexec}/el" "$@"
    SH
    (bin / "el").chmod 0755
  end
end
