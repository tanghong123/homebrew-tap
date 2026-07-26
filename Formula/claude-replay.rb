class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.37.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.37.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "be0b808e2ac4406343d506485645e62ed2c4bbaa941a243f70fb1706eb1a693d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.37.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "088f5d37a826528959e398e150c8af2a14730c137c7f4b5b62d61eebd5ce6c24"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.37.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e913d43b2fde1dd0e31aacf0cc8d9b6d7e2531930742b8a2d9029cc7cf11689c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.37.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8656efe3bf3d8b0201e0212e250941e7d2e025019ee0287b39fe8a571097bf3b"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
