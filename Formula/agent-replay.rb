class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.458.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.458.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c005c3030d3e21c776d045ce4f846b2f1e4e670c853adb38c77a3cab5e4785b1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.458.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ee5a453f885ec0f26dcf0cc10de6ad904d40265cd11ea71a7875b36478cfb940"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.458.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "28e8417bbaebc42e647b3a1585c9584828acdea4edb7c6867a1e70f5702a4d86"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.458.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3c10ac62b7ed8514249942bde5989080c276ccbf08826e920fac751279fcbcf3"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
