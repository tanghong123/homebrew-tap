class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.196.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.196.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "917c8bba26f61a592728adb0869cac5b8d8d1baed8289c0a6452b56fba872b8b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.196.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ada9f7f1ffe723d944d0fb701a13088959b7de58476fe0f34d55642d208ef35f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.196.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c21f072444997c0df0b54d5935c42a95aaad5c885b16b11fcbf0c29a7485d372"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.196.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e1f5707327a25baa3559bd0c9dc20a0f09973ed8a3dd578b60065dc9b74eda5d"
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
