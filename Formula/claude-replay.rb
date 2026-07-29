class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.3.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.3.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "1b93f41dd3dcdc5a08939247811ca684afe3aa6ca92c282641a9b47d6907da14"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.3.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "8bf9fa2d9e5014e98cd41e1a70edaeed9d0a30e65348413330b4c8026da38540"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.3.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bf06a8d0d6c95ceaec154cb193d5d82ffb9c07344fcbf5d25d4e7e6d123aeb64"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.3.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "685c2f12b66962b9a176dcda7a69731fed91edb15f367288391f640305aee0a0"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
