class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.157.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.157.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "9a452d68ab92ca7f9d12f8e39c7e24b5e79796fd41bf5be93c89ab845b474ca5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.157.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1a8889606c486dadd31569709507eb74a5d3638b3a5ef64433987e05cb6da15f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.157.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3c495811c70b87f6389ffbe97e5be115c377f48958183bc789449c65d031a4b8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.157.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f9a45d02bd7be74781bed192cfdb257f2d492724f12ac2ab185becc8505d4c04"
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
