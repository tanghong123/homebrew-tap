class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.541.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.541.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d760ea33e6910dc39f63f84eb30e4fadfed54b27317fa8b91404804b96bdb4da"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.541.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "3b81bdde6c28b71f146abdc2058c2c56848081b3b1ea5b9f8c0c003026135d5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.541.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "11107b7bf050443ff22949e765354debbad9bc0fd935f3b3d786e04103dc64c3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.541.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dcf4a623895f8b9eaa591aaf99a0dbc430da2f918c1266a687fde7972eff4d1c"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
