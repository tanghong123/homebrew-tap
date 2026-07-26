class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.33.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.33.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "5e6afcce6ea8b438aacee5df7f936347d1a0e6c24b63f601b9c7eb69f28c6820"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.33.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "51dfac7b8c2844301737869182bbea6b4df004f0902e8bd8cdcb87ba15a8a59e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.33.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "751f582c9135370e91c57264dcfe211a188009c67063948169008c62bb2ce763"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.33.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1ce2d9610ac5c0f7759ee0d1e5b0b5dfb66e93dac8cde2744448a72894bdcf34"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
