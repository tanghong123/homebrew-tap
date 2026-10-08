class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.362.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.362.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "fac7c874595f60cf6ffb235ce2f85ad7d105c55234ad72f597dc798ad8b83f13"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.362.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "1f9f5a48cd8dd3b414037e63fc20b59b89707615e3547b8be5472d6a992b774a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.362.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6f27111b6c59133bdc548b606fb235ee7e929d8fd4df524306a3dcd66ae5d9f0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.362.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c32086e3720afafd60c9df444852894a828e5eb556a8ee64b7c874ed1286664c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
