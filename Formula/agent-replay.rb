class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.295.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.295.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2f90ce5f8b934455fa2c82ef9c7ffd2581128bd7d8dc30760e472a9d68bf90ff"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.295.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "79ad23eea7f2b8204db0e91d0b8ee2cde842847a38251e1d595a6c81bb4c055a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.295.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "674a813281361ea74c77ba45618d82dfc6588dde0d378c6fd6ac9af52e971852"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.295.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "151ea0698c2ec9514f059d88e20b02db76107cbe4fe739b746e30d411a10dffc"
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
