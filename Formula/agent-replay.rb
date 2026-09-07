class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.224.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.224.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "cb002ff25fa8b2ff66707f7125b53ce9716a2e8bb655d19e37850f5149ea46cc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.224.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e64ed37f817c8b1c4923298074dd72316860bc2b46923068297b135fac07a7cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.224.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f898c3caf4f8f1663c5763b21031e0906d4e570fe84628c6078e2f6a2d5f7ed1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.224.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "971248dc476fb071b0d057b049f7202c04ec7cdde0914c5d277cc12a9b07ef80"
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
