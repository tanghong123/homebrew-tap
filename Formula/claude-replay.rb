class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.64.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.64.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "7edbc8dfb78752d03b0a5404d91649d97741831679a65e82668f15facfec2e5c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.64.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "335e74f08571ad369505ab81ba1b83d71570bb472e3d9e07493ab1291bcfad6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.64.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c223a3e310e9954d4bbf3317ffe9938b2f0f94d735eab5e8fb27cc90ff107d73"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.64.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "016c420adb7112a8f1c36c951b1ad4e82c28353a911f4398e83cd28212233c16"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
