class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.573.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.573.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "1647c4397435aab82b3ca1c088d995f214ad26e1576b226ea32ae0af545c21ba"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.573.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "8a75cb0f0e26442832a2c29a6109ff539863c6b44277671af9b710afed4835be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.573.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ce7713c1fdf8b116d5a682b77306582bae131a7db5f77549d215a0ba46e2bff0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.573.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "35cc93063b7228dfaa12868310ee73efbcc53af05971bd3b858332b13961a4bd"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
