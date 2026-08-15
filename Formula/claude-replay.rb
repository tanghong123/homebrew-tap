class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.78.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.78.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "12f90b59de5a243cb66668b1a2fb45606727582b486eae7b4d6b5b77b7283460"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.78.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "18e7cda152bb903ada8137786c764e3d7dfdb9542f9cff3c66156a4f91113118"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.78.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1068e0a7820a79f3dcb295cc2ee804c88319cf3bde646d6a7b7e89b83ca451e8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.78.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c9ab8b8e509c935a4b2d6b27489cf70c9beffaf4fd76a1f90e26dd937887e0a3"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
