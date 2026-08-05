class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.37.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/claude-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.37.2/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "465c411fcad0f8928e3b43c41a4369dfb0c8d96bf547f0c64315175e9caafe7a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.37.2/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "caf5763c4d8f6818848438c921b9372f0f72c5a296db61abfae133f1eb2fea37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.37.2/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "58d05e962f7267ca0fa7e807e72b0ade35ca30e1566ff01751804ff6ec8c1f3e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.37.2/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "afe638428a6df44782f4484b85b7779cbc2a48a9bfc9bd9297f5073686e124a5"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
