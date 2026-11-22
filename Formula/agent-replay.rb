class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.554.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.554.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "1b671227fbfa2a773001389feb68fad461197ee8d90ea69af79dd29e49e35a6f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.554.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "510a5be726f71b783b5dd205839deda5675716f9eaff260a3707766508870653"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.554.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cd38adc413426f5f94744aea42a96727a699ab566e290a20444f60dddcefb18a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.554.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3c563487cca2ffa2579ce50842b195aa02b7726e8c0f5c42ac48c5819b4b9829"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
