class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.490.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.490.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "fbf234d39f7d7685d57e3188b2bd57abd45856ad179f3751f6bf3cbd0b56a9be"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.490.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "2b0e0d14c52d0116005e1b0efad71117b9536db1b0a819ca3b7bbbfeb55f82b7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.490.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "419b1c8c48eafed256b5829b930c96c462b371d391986de703b4905961c5a6aa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.490.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0fcbd5285f8cbab3add0e14ac8ebc0024e17b568f7f2a6676e14413f002cd0a1"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
