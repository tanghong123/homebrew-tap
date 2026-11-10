class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.501.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.501.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "48c60497e65d981e0358b4bff527fe2c2c38ef6a199664057ec22aa010316c80"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.501.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a4cad7ddf078a0802516a4dfc62e3c83d58cd3a7ee43d1db889df4c932bfd71c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.501.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8125467c6da1b27ad6ca86fc5d725638f88d1853962493cf392f04847e297f17"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.501.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "36fd85c5034d0cbf7ed39539389e583ae21f4a23bb44a93a84f25be76e8212a3"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
