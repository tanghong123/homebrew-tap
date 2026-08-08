class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.20"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.20/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "98646b6aee2eea1347d1b038577f75ce9a0ccebfc5322babc7ff52ca205f3d52"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.20/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b0187fbf8639689dfd0e145fb21f4bea88c7c4676d41d2ee6fb10c7f3e3a1c2e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.20/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1a4f7c40d7f2a100f8d6f0aa861777d130f0fae59db2364dca80d88167c7b739"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.20/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c1fab2ae744113fc71c43028a551d8e96697e372689c1e47368571530ef37d9b"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
