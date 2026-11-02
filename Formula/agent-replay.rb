class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.460.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.460.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "7d31946253b30564e032f81a71c1f1e158ccfb95e5996cfbcfb5ad10fd0a78ed"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.460.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "21dda661309eab8a33e77932faa4fc3085a3d7262b24e19f756ce687fb3de1e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.460.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9dd0d7278d27ca59e6ec072db4f8cecd6a7ec29b4ee4698aa6d9d4c4675f27e2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.460.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a5560e53f4d8f69928790979782ef971689877922c272d743a9aa683b967ea33"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
