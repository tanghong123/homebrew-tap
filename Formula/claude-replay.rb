class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.33.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.33.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c885340668577616ac1484e0a0076c0e0a4e496e48e2cc6ffd2066ab1d1964cf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.33.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "94c2e76a4169e3aa8b669835d6c8b1db9a7c32b1938f0d5edb039a10c64c8844"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.33.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7b1538202593851f3778861a105d77b23ade4b278f91b3442731f04f1360cea2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.33.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f526daaafbf586aa027509ae7236a47e9426e93654204f2e6df5b68430aece9a"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
