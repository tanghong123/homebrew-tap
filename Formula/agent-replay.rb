class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.563.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.563.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "974196a632615a6b71c4e7d01aec4606f0d01d267027f9a06f037987cb5f4ee0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.563.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d83302d496ed5feb32299932be043d7a6a49475ee9315454e7193875e005a6a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.563.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f14eae78889a685ef7d14f0717ccf8862f2b7d064328c0778657cc91c1a09178"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.563.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "233a197cedb1a3f872538b88e348a647c4b2bf6e905458a46c7f6d325e65b1a5"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
