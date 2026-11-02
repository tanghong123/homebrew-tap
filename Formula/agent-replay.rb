class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.461.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.461.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "3b204348453e2907d242133654726ab514e4f7f225742f61280b7f0e5d3ad608"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.461.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "62ebcda2b5d5d0bae4a05d77178e4d14487bf98e02b0fa7c6638999017c54efd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.461.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bfb528ce5c030e2d134811eb1a28697ddd5277be3738c8b7c147b31666c8b728"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.461.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e7596310aaf4ca2b69f62fc1bcb945b9b3c05d609c140a38704881c9a84b86b4"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
