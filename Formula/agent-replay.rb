class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.247.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.247.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c1b0d01bed63635dd7092906437d780bf1c73531024dfb5d92273b54f1fcc8db"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.247.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b1545b874bf04075db71fb5ded44a068da4fb8745ba48d1070afb346e6aa052d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.247.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e8e88d3eed2e0cab1d9c0d98edf881b0227fc44cd4ba20d008ea873157b2d8a4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.247.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c5e78642fa6a301fb1de63eb0967f6a70608cfcbfcde5d334c543a6ad83d8b12"
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
