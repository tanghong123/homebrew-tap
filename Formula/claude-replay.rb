class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.2.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.2.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "7d9fc7322ebd7cd11c575830d046864f0f4fcedd9d9f9eaf13622a893ba7c2af"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.2.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "574029e4d22aac49f7afd29811ab81953f82357c49bfde92b6454f1fa49e6072"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.2.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6393a5d7673003f74f3bb43b9aad7ab03b360b2e21aaebced096f97b0419a955"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.2.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d42e947999bec45f134971a4b7f8973a1d3c7470cf646f2f7c42e7cf36f2322b"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
