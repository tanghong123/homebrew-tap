class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.503.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.503.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "dfa07c2ae9da32b2ea37f37f2691a114dc66fd38d59c59f7d715ea7d9f79e429"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.503.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "2e9747f8e88b80573e642a11b7cdb2d3ca6cbfce1fca3298c3b4f89b75f6a6fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.503.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0ffc65edc93b028c0a4e53ccda20d9016f91204385041e3eb2f82c5c2eee7e15"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.503.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "46cd84193eb1f0d8d437960c8f4824153372ffacfe543d56b7977e0f96e358da"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
