class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.37.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.37.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "bb77fe8cfa8bb93fed191f805ccae91d65f24cdc699739d7e999408b73cfa8c1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.37.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "792b63180096e81a9213a90a3fa592afa6c65c3a3a28caa5469aab43f464abfb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.37.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "af4b6e831d82b774724a136679e0cbe192df54253f449c41449748614a08cf1d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.37.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bdf1bcc8723576b9cc3c0428b740523856440ec21e404735bed08ded61d70cde"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
