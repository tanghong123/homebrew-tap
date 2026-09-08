class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.239.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.239.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "29841e95b23fd085e24cd9b0f72d56297dae44307d7d871993dcbdd91674ead9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.239.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "054f5f899c573a504e342c63868a5c4121737d2457a93d2b5e2654c903479527"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.239.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e000355dea6c8f61a34ae7d4a16fa15ca7a753a3e0f3a0244e1dd54fe09caed4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.239.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "390e1b7d41865ff297ec13dabb76246a198f8a0ecc2decab1be6ed247356e047"
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
