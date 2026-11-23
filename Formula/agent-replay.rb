class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.558.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.558.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "da2b33c6db656a91ccb9cec60f976cfbe2761120b6f0a0ec9f433a8f0a9c75b5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.558.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1fcdd75f5352602ee0160080ea43d7a4992b81dfa1ad21f4a334c6b24dbced4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.558.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "de99c4eb9bd91064cb5b4eddd7d41a34b33ab4e2489471b2e52ed86ac713376e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.558.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "044912704059f7055714d19499e76554dcfed8070ddd2002698f41e50fcdcb99"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
