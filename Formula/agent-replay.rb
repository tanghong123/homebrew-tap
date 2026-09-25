class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.302.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.302.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "a32eb07ae60ee6e7cbec1f23f58712eb0bc9a979671e0b8be9201bb4e5c46cc4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.302.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "15a635a74388409f3b2cbf3fd1711303661c77757c994d3d5cc6a7c4b6d3ace3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.302.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1cbfc2f332e0aa1d8b6cc267e13fd16e63dd4e5bea56c3403d746657654e4e2b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.302.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f0106e5272033bc4a5de5cbccc0e33160bcf11cb82f5158442fc0a5a6e812de1"
    end
  end

  def install
    bin.install "agent-replay"
    # Rename transition (v1.101.0): the old name keeps working as a symlink.
    bin.install_symlink bin/"agent-replay" => "claude-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
