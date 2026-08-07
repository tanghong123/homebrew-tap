class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.46.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.46.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "cf794f314634fc67730f3a44a755554aef854b6052e171acebff605fc186db77"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.46.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "54b8eb9715f87b8a67fb42e03cee17a710786edf3ae787f7889c5e89704afa9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.46.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1a393d331cbb11cf80ba12656e103fb15ed9539ba3b4a068865ca1dbaa9a609e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.46.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dc34f385fb08dd588c64194ec88cda61d4027b4ae84d32b3154d8cb18bc30d5c"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
