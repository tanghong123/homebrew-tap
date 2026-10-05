class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.349.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.349.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "5d4ad6ece92bec6c5c03d2e692f638fa96a985cd952afafeb1c6541469496025"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.349.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "96a81a8441c02966ef8da5d2ac0ab56aea8adb0573f622613a1a217d55e3afad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.349.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5ec97ef183c2166ba7c72b521973d49c8a7a19972fcf2add0bb6290ed85d0166"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.349.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c568734f39955c744175eb31025e776279862dc703345aea7412d11edf7564e2"
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
