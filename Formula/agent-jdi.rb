class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.424.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.424.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "bcd0455b768d307d7f81c12ce624edd5cb81ccf69377fa135c35e32aec82dc99"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.424.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "2b4e58b266849112f60a92c35e37cca14db668c4677ffc12e50a069085d3e544"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.424.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ebe2d8cc8dea0d60b695a456a582a1c782b42f6074e72898311cd265e629e05b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.424.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6dfc714c2e20c693b8a64f153a50532887738491a920e3f79cb44fb49c0ad22e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
