class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.29.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.29.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "11fa324a9c65bedff75f9a61d42ef72941928e314901bab0b9eef6c5ce9ada35"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.29.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c99f761df54e82e078fc39ab2a55e706289dd4cbd9dea5e20e092251d2f8f01d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.29.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ebfe5203d7fd797853df5dfe062280745ea8d7de32df9f1786f696a62a898607"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.29.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ba1658501982765523b9468803d76d8801562f3d33c80c1e9544eae3eceab27c"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
