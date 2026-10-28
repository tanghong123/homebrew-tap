class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.442.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.442.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "9b617fa25b03c39597c9c8c3b89b83ee2cce6191045d7d385192279307abf375"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.442.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d80c82c69f698872bc3705dd6e22a393695eb19d9195804869c44a198844b33f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.442.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "08944b5afad3e72415eef8dbeb39b0fc7bcdecf3fbbf71a6fa5f9f698d22d4b0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.442.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5c00bab41eea227e277e3a10d22c563cdcc78ba8e17f24ee03eb4ed267003111"
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
