class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.49.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "3139b763948581319100fd2d7d366bec90b6c16cb90f908ed86527f15739724d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "acef39b11aff7abf794fb0eea088566fc35e7a7a0abda433a36eb27eeb97ea9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "50fae5f6ab9e3826bb7c08750499dacd2227812ad0d2713c08273dd773f68b8d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3b423f65269e992af62a8660132faf87e6a05ec039f8cde1cd81772c32293dfd"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
