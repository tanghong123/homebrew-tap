class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.571.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.571.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "21178192099eda4aeefbc4eab2b52c07e2b035fb9cf0f5245aa6185a2ed9cc50"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.571.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "3f71d27aefc213dab4b44db29dbd3686c5ad5a5120242acfd6c32aa81618cce4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.571.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "454587dafa42a94d3969995874759a4f67a09f9c1cd5cb6fa51759c93711b496"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.571.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3c94fc60b2b8b43141e520e6c14b082f40135d3d8df20be9f38eb6c3778d174c"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
