class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.100.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ce24912d230c489c38fb242c029db3b832def5f0c2faa0760e582ee8a922c3bc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "f6d2e965d0c024adc56e1a65ef6d0c230443b82adc1d3abad36950caacea7d7f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "547a4be5315d0ec6b7eab80d790ea1ab703ea5daf0f1fa0d9bda1c5b28a7d844"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f5308ce3a62c8d4aa80951f174f671f67f69efe795a699f7b87792514f60685b"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
