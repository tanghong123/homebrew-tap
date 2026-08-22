class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.100.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "a6ce5c11372bc19c351c944b92ffd10e3bd7da340d8943902365a5631a0f2a77"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "046b572460af745a447cbc78d757bec619d8e5656d952c24dda9586bcbca56a3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "79cb545ebe83ecfe8d9e1496db758bdcd20e01a92123e1c51ba9b27f750d2dee"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.100.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6dc5e3b56a6c74a55cfc0ae359ed684816908216fe26b902f5a0fd75002a7c03"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
