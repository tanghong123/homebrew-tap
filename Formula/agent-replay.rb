class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.476.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.476.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "dcb648fcde066ff1ba5353c63bcbc1749234cfd8bcef6efc8698b0d5023fed11"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.476.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "947848e658187febb4956902f1fe25791bc34c5492908d8fccfb0d76bc52abb0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.476.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aef2f5a96053c4d798624ffb69b00adb27a4bb1d1597acf79ef7f0c2a8c6bb39"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.476.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "09aeacf6546c259256734a11e80350c910657c4d30c2a8e2b845388e1a403395"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
