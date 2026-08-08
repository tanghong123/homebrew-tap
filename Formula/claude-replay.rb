class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.4"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.4/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "a5f6e5c8678a181fe176a01b40ccd1657fa92a56d386b924e4cc0481804c888a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.4/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ea9cbf9a38fdc0cfda4c02537bd886b5a2efe2c5d52e0967b33961410cafef8a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.4/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "305298a59e87c69670be5e4a1424ad07cfe0328551a2424fcb58da0befcc696c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.4/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a9caaf115d4ff116b42349c77d1a71c22f5a8bc1526d88b0436dafe7be042233"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
