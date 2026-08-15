class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.81.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.81.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "608469ca3cf34ae80e63aa200aafa539b961426a656948afc12dae84bf4fbcb3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.81.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "48e79140d62b513d0c7f96a41af30e6047ac576f82817002f8883c8ce4673a9b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.81.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "547019053774943138db960d6b8308ad3ed92c52befc334dfd1ecfe9e1926d60"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.81.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e9c4e962331db9eb9b2b95156d8f2e1dc9e27107dc826b18a27ee0a913a7cbc2"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
