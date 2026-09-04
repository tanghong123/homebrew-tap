class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.167.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.167.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "bb1dc27004083b58ada212f8612931295072b29e58a5c31b3767259f87f33e2d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.167.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1decfb70bf003c02c8b4fa6cf0417da761124f83370235849dacba82ebcc165e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.167.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "61d213a3e1642ff60943574e0c0f9098db9c681fc079e99d8ce547633ae049ac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.167.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c3959ece505da4e57621c203b7ee9d80bf1c1e3ca0bc3c35061257503ada933d"
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
