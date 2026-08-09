class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.59.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.3/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "708cbb0a5ded1b4242aa89e47b605cad20ea4fd514c6c8cd6ed1fc36c5b82430"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.3/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "3b29aba9fe8d6ff36add509b16ed64628f149e1b6d82e3eef156e38f395c1913"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.3/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6d622b6fb7df25476656b6ff282ef0d71556b74b65e1d617ef07df2a5537673a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.3/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e04e4c19caf6293d9049c452a53b400da91d324c30275e3598d8a508a9694e8a"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
