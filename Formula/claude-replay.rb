class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.15.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.15.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "cb06a0182ceb408ca54ef85334c9864cd14d689d7b2a8956b4ab58e01f6aeb81"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.15.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "44bddb0489f8b82c699d8022c20fdd5201c9a565ef4c76d04ba93ab61828238a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.15.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f40517e428a3c80dbd4056915fae2aba859972a1d5d9864258e7554738b7d0c4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.15.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ace41ddafc2bbf25e259492ba1058074ce38ab8bd950a9765cd80ebf979cebff"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
