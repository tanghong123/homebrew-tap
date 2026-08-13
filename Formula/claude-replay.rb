class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.67.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.67.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ff42c78a7a64757af4fa2a46c8158c54c88206a782f47ea4c4aa4294aa794f6e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.67.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "36f6548040d70741839a8571d635dc2edf5cc417a2e869ecf0c6dca5a79650e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.67.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8364f974005a46accbc3ab3b4c6c54a73a8ba7d5edd65e814c9a5788af0c7345"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.67.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "acc4a46d4cd3170adaa3b9293eb7b8652050ec57219cf89611763c46a3471739"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
