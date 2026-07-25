class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.29.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.29.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "1d1a931327fd2d54351fbd4fcf954840292bbb5368634d28ba25a7ce6d6f16ae"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.29.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "fbae197767a82418c38782f114b5106299d276e039fd36417125eb652ca9e0e7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.29.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1c110059ade75fb0247c31dbc858371c3560c81406ae7a64a4b640a5ea4d02cc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.29.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bb1d2a093d9234046a0f26e3850566350168cdf0f093ba763ea27b8c0668175f"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
