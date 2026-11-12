class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.514.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.514.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "a15d1cde6d694ce6d198931791ace20bc95bd0d6b972782d86d36fb58c240745"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.514.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "03b1662471a9ab856c84071453091a85f2a016bc0484a4969c62747fdd68f770"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.514.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5cf9a3d63b88fa76ee272e52153e7e1d436981eda3bd7b26d3dfc9a09a515f0f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.514.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b23ef8c654525ec67a74c111a38c2177a757b86d2ff166ad7b75d7b163bc5bbb"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
