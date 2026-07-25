class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.31.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.31.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0aa29ea2a186c21cd8797d1250823fb8ce2de4245b961842b8a5d6717c173b2b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.31.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "9ec4be9f45dae0356bbe072c75f4db217ddca22c5d4429d757ce2ad7cf3d945b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.31.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c5854c672199c7ff1996f1d58f65679a6d7ebc225e91ea9cc2c6411d83677226"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.31.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "46e69aa9a09b082940b87a34efb889ba23d8edf19c9ecd81bf9776ebdd8932d7"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
