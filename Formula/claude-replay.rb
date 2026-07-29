class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.6.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.6.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b2b1b5a3e3a0b3f67f44a2a667422dfe784ec64330cf3c23ce6c5a1587df036b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.6.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "db3978769aa1ac2501064ee606e2890881d8a4254137de6d579560776cdda27f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.6.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0b58f71ccda93722505fbb6632d3a622d60b0193ba23821a6f77e15013a54d3f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.6.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d729ee86f21fe77a8d85316ce27858870d8fbf8c7a4141c07bfe0f0c2cdca01d"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
