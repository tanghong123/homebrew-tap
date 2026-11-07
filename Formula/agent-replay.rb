class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.487.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.487.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ee871be0b63fbd7c1fcb79815b938662ebc110d1c4a9ea321312053a70db442e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.487.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "19a908523b9862d29617c9b912171da7060a20d953ac3248a0d464887e2e1152"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.487.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8adbe335745ab00a79e8184f27528649441e0f73d0592757f6d7078aa1b80dba"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.487.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9c0dfad8d9d1815c5aa0bcafedc8be61b23e01bed462a02ccc9c23002c76ebbc"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
