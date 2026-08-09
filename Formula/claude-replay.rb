class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.58.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.58.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "8fe3a0bacc1665bdc5e9eed0f71176eba4aa9a217625dc0f53af1072114c2be4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.58.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ea12c131aef59a317a69b2a553263b43c6d1399f1c5afaa6f1891eb1772ab68f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.58.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1577a39aa65a9ab93cf30ce6a7d29b5e5448dc61912bb9e571534358eb9454bd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.58.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b18a0645a44ca77e8a00b3fbecc2a67c23a271560e4a45ee0b0a90b8d9878626"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
