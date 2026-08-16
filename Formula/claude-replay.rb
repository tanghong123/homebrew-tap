class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.88.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.88.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "69abc3c64bd69d9fe8e6dbb5013323d10b386ba51a7d31b2b6da667d5bb6be77"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.88.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d903a8b38b1ccc06043256b805be0a5d7558df719a8118456ea38b3dd10f0657"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.88.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ad2edac1bb933af39ad3c9f6750522b5cef820e042ead3827be345c4bdc95314"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.88.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "90011b797da6c72e1516e0263df469d2c6ca6d79b6ade2cd601ba4c2865bbf04"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
