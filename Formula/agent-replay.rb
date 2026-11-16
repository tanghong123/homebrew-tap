class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.526.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.526.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b1dc20bb95c058628da0a6c549d521c0ba0beb5d177c58d2c9980e5d556e4f61"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.526.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "610cb188267ccb835908e646b9c65a966e042613c2f69f2c693ca837d6d31398"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.526.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "72a5f2de01699cec6e90eab06eedaf282ba8968487a5f8d7097a43cca1a31608"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.526.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7ee68554d931180f629f2ae12fae5c0a5439b2d2af6e02f1a000994549158b2f"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
