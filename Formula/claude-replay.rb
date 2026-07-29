class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.11.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.11.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ecfb696caa2cfd7166ce11968b9e4dff7f491e4d5706f0f82f97153d0f6d607a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.11.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1fc793c0d0f0da1f7f8f474133f60ff7d5a97be77466191120e14767b5b60914"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.11.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c783563e47e4f4506568ebad319e1792bcda6df52781ce08c1d044e0c1d90491"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.11.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0a0f05bcbdc4bd1bc79d6bf2f9e08d335d572a989c22270b5511cc61a32ab27e"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
