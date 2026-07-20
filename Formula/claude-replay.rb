class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.4.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.4.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "bee65f5b8ab3141ab60d5c0832115d13ca1b09b247b93460c5a9f0d0db3fe7ad"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.4.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ce5d5238162ebc1ddaf3f6a1104a716110e325aad7c61a13db8e9a34c0210042"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.4.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8169b03b6a0ed3c969b621e6a3cf8fe36f11b221c92fa4802dda3261faa23068"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.4.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0fdb351c66fbd41f187a5ce688ebd4f3ccfdd962c30a264b67aa04f8c57d588e"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
