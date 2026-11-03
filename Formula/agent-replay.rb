class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.464.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.464.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "4af687f9930f4c7073e9b2ed54716eaba50c155e037120b9984cb1f3637cf088"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.464.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "02eafebde175db869747afa573c2c5dcadfb5ea0a0bee9cb5b9cfb3a0268dc37"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.464.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2947120a96d804179946a8760bb6f217617eb12b020b667497aacd8eaafa5afc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.464.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d3806fea55675314640872c2ebdb89cf1a27613a24f73e44596cdd8060641793"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
