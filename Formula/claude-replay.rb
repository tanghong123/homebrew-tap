class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.7.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.7.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "aaae305c8f78772d54f138ca9c685451bf7d5fd3c90999c2993445ff641cba5c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.7.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "465f9cdbdd40cee6c297752654b471aa78038880e64aaba6556222f2b691d970"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.7.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "73c2b401788ba3619dab3d327c2c13e33040006e5ed237b6e9c76f51d5869d89"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.7.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "14143c7f263fb225dfd164a3fa7c78145f55138bb86ba70317c000ef9f1dbde3"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
