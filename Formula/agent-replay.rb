class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.288.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.288.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "91dd13b093da873398eef7e1956392fcb2b6694b2b05407cd819017699e4795c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.288.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a6ca5c72ded907d96264fffe29769e235d5142c078accfec1f764bc743af90db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.288.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e58da47e0a2a70250d0d988017185d08e2d7fe8f051b730000daf97bc61656f1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.288.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8b85f07b586e2859bb54523d2087f81164a7a97b611b1a91c45d44ed3e6768d4"
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
