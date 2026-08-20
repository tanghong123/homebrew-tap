class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.96.5"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.5/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "3ded1b3d21779442c19f40c6b60970ad4deea32b34d28ea75dafb9f0b450776d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.5/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "6fa7e5f3cb5e2a50302dcd76480ee32006f422ea49e0cd565aa66e07d24a9885"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.5/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7e15532164edfd9a2a55300462f0d58c04b4292fa69f0762ebb2fd73ee2d18b9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.5/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ad426dd2f6999381653c602a5e7402d76787c571dba376ab85f67d02a4f6262f"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
