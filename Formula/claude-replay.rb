class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.48.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.48.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "13f37c3f6071b5749d9755f7bfadaba9f093eba966d68eb8b173e01070b5a28a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.48.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d149ba5fe7cf9d9340c6f64ff8cad17e5d0d5aea9cbc3a05ff92a6e0ffe1e33d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.48.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "afb6438e0b0a7af6f0c76513679273344159e6c0d03f94691f8a24da0ccadbf1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.48.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a80517f012faa674391c7da42c560a220c8b23446c06f3e3904e741a7b0e01ee"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
