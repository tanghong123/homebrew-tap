class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.494.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.494.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "cbdbb6d1527f42987d277e10fa1b74b99f4af5bc140acd6bc6af793594072853"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.494.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "49764c90c32d61fd869746203f246711e575c6c2d611fe00b860a25e2aed51ab"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.494.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "31d4cbac426518457a4a8da96135de78f3c89ffacf33c91f8ec9adac6adc3afc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.494.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1b77f01d86086dbc3447cd25854493667624d3efd730aabe9ae9ec94cd521b48"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
