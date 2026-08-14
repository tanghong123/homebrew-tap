class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.74.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.74.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "5230adcabd7ff31fd7ac99fcdcb65305b0fa28f4ca643cb798afbae442120082"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.74.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4eb76234c410931cb8fd8db3a75f89958134ab37da2fc1bce1335dd22fe7f7a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.74.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "01ec3ac2ebbe2e70f42f50063ede7a6a9fb945d38003822d0e093de7d5eb6266"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.74.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7c55e279d0e595d1ad69eb230945aa17e9752ad9112b8018d0bc27c8531b4f85"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
