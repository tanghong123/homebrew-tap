class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.56.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.3/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "19f1dde255b5ce1a63377c5db04511c6bb9f457a8ef29345ba78cce52172ad20"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.3/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "812c44c54dcc0370a1e0bc1f46f0765aaa66f3fa7eca9171d1cf815d5c348834"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.3/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ea21278e6b6bd079128901ff584982a2ffc8f246cb16c4ff1d9eb2b32f2bc50d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.3/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8df2fca19553050ebf6546b93dfe1ac4cc2c1e5c00cb3c1505ae25c5c281ef7f"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
