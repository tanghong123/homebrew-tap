class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.3.6"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.6/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "adcd672cedd1a10ac24f87f67bca9624037b3fbbe65b81f98c5e52a70fea0b52"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.6/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "623efdd60ff30348a83a7f7c207c07e9e4aed2d0a0a11a6c2777c5e39131add6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.6/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "44e2c4aaf4936ef5916d217544583f9548f51a1142e0f52ad54de7292147179f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.6/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e8d9c9389529861ae28ed42423cf8380eaf439b793212f6a82536cbaf18808c5"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
