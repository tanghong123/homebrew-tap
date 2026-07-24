class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.20.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.20.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2c17cdbef5b5ad864723b6d0dafef591679b10e1bbd864fca5b7f44932d9ee8a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.20.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b2cc2477bfe0b5d6b3924cc7c341f3f31aaf7002e78bd80fab3852629d51d115"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.20.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cee73739bf7ec356db27ac92f8338046382a94dce56520e174a0530c0f329370"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.20.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a9ef76717891ef8e5bb11335d88ee6f76771b520393ebfc4c0c8e4ec45553640"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
