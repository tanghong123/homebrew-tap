class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.533.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.533.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "aac41880f42fa6861ff22fd1c02c03746f9079ba78e0dd37345a8d4468ed1fac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.533.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "54f8827d948843d3a2db46f292d7ec369ee3190a9b3bbe0eee0be46e8646fe7d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.533.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8f449c5a48d26310d0a1eee40fe2cdb8cfa169fe46cbbbeffd8c00cd852a3fe6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.533.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "83f91c1408243e451566c6e87d8703c0c0a4c2de92e073debd1db07f209f7efe"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
