class AgentJdi < Formula
  desc "Supervise unattended AI-agent (Claude, Codex) runs and follow them live"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.276.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"
  depends_on "tanghong123/tap/agent-replay"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.276.0/agent-jdi-aarch64-apple-darwin.tar.gz"
      sha256 "f375b6f48e426d50e909e0f679039154f84c6a4397a6529e666075307117fbb7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.276.0/agent-jdi-x86_64-apple-darwin.tar.gz"
      sha256 "dd65e7a0b905ae4bb458301c0ba68b98a73ca4cbaa345f3b2add9d9293cd23d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.276.0/agent-jdi-aarch64-unknown-linux-musl.tar.gz"
      sha256 "29c5bb6a310c4ed5de87c05d4bef98aec05840cdb67e04898e3f533efedf395c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.276.0/agent-jdi-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8f4290f09e4c4b2f265b662a7a2616d015993e15dea16642b226c087f4cbbc7e"
    end
  end

  def install
    bin.install "agent-jdi"
  end

  test do
    assert_match "agent-jdi #{version}", shell_output("#{bin}/agent-jdi --version")
  end
end
