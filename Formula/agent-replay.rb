class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.515.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.515.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "8496e5e9f3c1c88a0a2914c416d3f80f7988841e726d539d2a3b435f1d040ddd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.515.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "33ecc07b7ccfec575ac91e2c9b021ab40cf6439ee6bb18ca4f014e161c25e24f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.515.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b54572c0bb68f6c628a12507bd7c9d869998d0239e0819b642d34c875cd64d83"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.515.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a453a52e70f4aa3b26de54810a2cd008e9d0636dc6e65fcdd19908835779f18e"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
