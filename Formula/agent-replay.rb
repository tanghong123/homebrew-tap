class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.547.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.547.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "67b06dc5eeded30b38735b9b2e2226bbd635ed93ac2e8da931ff964b966002da"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.547.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "fe4c0c379a13e0cf2fdbca18141aa76e5da96b36e5bb7c3675c26a7afd1657ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.547.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "266096c317125c390a4de3967c33532c32b8487903175b5dd60cce3156c53055"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.547.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d75624905396fb85d259c5061cf73499368e94a1f67176dd3b3721150597e10e"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
