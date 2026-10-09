class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.364.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.364.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c3c6267cf5e9bd82b6ad314c9ed28f6bae795dc5fc64b51627389ef56c734255"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.364.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "9698424fccb67927f87c8b835b363046d3b1a21687d67d5fe18cb77b686d5b6a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.364.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d20d230423b23e98c5703b193db43bab446ec6a946cab68769672fbc2ed78c4f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.364.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0ce531507909c94bc176a2dc0333acfed7cfb90a9c6d3b8050db3c29ef3371e7"
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
