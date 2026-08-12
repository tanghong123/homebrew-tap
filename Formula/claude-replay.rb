class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.64.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.64.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "9f0ce656e8e0f4d0d1ddca0ccf1d0e135d1b9e940a08c1bf9b9c1ec92dbb1424"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.64.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "37085e50f069f37adc8cacfdf237fc9b4f37698bbcfd7cfad63e4a6a580a4076"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.64.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9510d2f5d6bf70f3507db43ecee39bbedbd3002a7da314263baff1ecc6476fb2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.64.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "96817d5dc9b72e8134d286d1c4f956f9e82fa527e5584d846deca2279faf9d59"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
