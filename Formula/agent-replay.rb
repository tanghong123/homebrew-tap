class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.469.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.469.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "51b65e9e16cd4078e73b6e8f11a4321e24246a83da63df3b8ffa313f21c7009a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.469.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "63fffe82c4399c27d649ba55042010fe196195098a132a721108b329ed41bde6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.469.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3c62450327a10d581dc4314aae643b003a3b0942046b65242f2a1e11f0974999"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.469.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "34b34e380f4588dd089342b2f87ce338b31f95f0c4a98ea6bf2bdcb15d7a275f"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
