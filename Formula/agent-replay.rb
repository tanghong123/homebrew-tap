class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.150.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.150.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "9e51aa4773420d43521c82f972e44f1edcbbf318ab87552d3c4e71199632a3d4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.150.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1d4b8db15d5e2d19389fa97cd704f6b5a318f67441de2c131aeb5c45f1d32489"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.150.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "82971967caf41027899a36dcc81a4d4da02e33b4ada5aa93aeadb717423d47e3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.150.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "31a3757e321b8db4dd11d4dfb158adf176c242f81662d30546f1ea97ed8c73b5"
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
