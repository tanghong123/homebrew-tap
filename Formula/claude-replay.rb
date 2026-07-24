class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.23.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.23.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "bd7b5ab50b8c2b078858fcbd9e92e0ca0b317240788ee3dc7b1c4ec8410059cf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.23.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "014de387b8ac3531a9429e500e546aedec408882a144b0469084a0dff1f5b8db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.23.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "af6d458e38cb43410e277cd28c2e1fce78cc8d0c5d03aa747901129d2835a931"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.23.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4ad3d2ba879e87db0d5db26b8a25fa9e2b154659472571f31364578ac560d56a"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
