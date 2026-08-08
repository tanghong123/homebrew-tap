class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.8"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.8/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ab81de186b05418994e55c59f8665ba16d817936b9a651e00f6ba8af9f4310e4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.8/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "0f73028efb341b075368d33040c70662e9789b066f85c5b1dfbb34ddd3da72d1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.8/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2148d312ee3b2d9d58d28047ca29200d0c2ddce480d1636825f57d89364cef77"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.8/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "39d5b78738bd8bc28898de5daf142650f48152e17293eeb410b319314cadbe2c"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
