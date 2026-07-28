class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.38.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.38.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b5567fa45582d01f17366071a5f96d115e2869d5b1754549cca925a5313c078d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.38.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "46f1c97467e32ca6f29d19ada8fc7a87367453f75c8220dbc9ce4083a12b41cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.38.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3865a4fc5e70a833f069a10220688332813aa7550809335bbbe7ee20c130b14f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.38.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "edd5853d08893447773e913b673a09fd072112053087e3358663664ad9a73925"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
