class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.524.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.524.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "7849014e8ff2694a1d9302354eb7d7f5c8e6578f96bc3417728b57cdd0d2dca2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.524.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ab73ace8c4b104209a61b2c89fae255bdd8013099ee4571109c9b72c6a4b3c57"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.524.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0539f9502633ef2fdda2e06e6692d3276d3f76be738847cc5184e76bd10c7dbc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.524.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2842f5b1fcf39e9ede437e470b458d1295ffe84e69c9a4a9269f725517af08ec"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
