class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.72.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "4156b71f5f875aaa42c31876a6ec37f16b0c6390b6949eb9504dc2999536d01c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d5e1c62b27be5a434b2656a58166a9f157e2a76eca93ef85d5b523610e28eb4c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "004606ca69cee4cf2a056f1ad3be98d1014812feda60c7ad1b01180c03bcee76"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.72.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7e897531a801824d78d15193f9ea4508235a643016763b2d4be95bb7876abf7b"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
