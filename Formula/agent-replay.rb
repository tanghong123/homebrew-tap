class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.351.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.351.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d3dc61366656e1819a92ecacbc59ec93d2b7d701d1c25927152c55649f46a6b5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.351.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "f8c56c0b7d7374a718c99088ae64bbd56faeff7a72f85f6e385f7d2506621ec3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.351.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "82995401563d1089ab4ec97beb5f8e877ee6c47e3c6159aa543696d348c0fe70"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.351.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "918951b592ebc79650dfa838e696c8a21b307320b4fe027cdfe8e2d88f59b75a"
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
