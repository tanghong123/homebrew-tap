class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.54.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.54.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ad1d4f7c76fa18134421490207d5f2359e0ed3c257ed87d1cd5ac7ac50f8afcf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.54.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a655e31414a91126a691277735a53309770428f0a71c7fdd930188911311c91e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.54.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "18b8370d091993baee7a231d8237ac7e28f5f2875f1c9f9cd1d6beeec93a24bd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.54.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3773de75a8a60e6771de7832648d8319915b6c821142d9d7e273cdf7ca83ff6d"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
