class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.552.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.552.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "fb013d04a36778f4a7b058fa6f0de9bc460e10517ff32803c089962aa2e7cd47"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.552.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "dfc8909db9d8f61ffbe19643cb136001d7427ca3728e594712e0c8012dfd98e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.552.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5250aaefedf9935067caf1a3e1cd4a0fadad7c7c79b7bfa3c05377040195db03"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.552.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "117faf0ab9cf33fc1adbb069946a846e8c1ace067e0a24ff3a28f44625101913"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
