class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.13.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.13.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "039f5f48afbcb15e4f3aedc4302c4856437eccf31564f6d0bf8b3cd447089e31"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.13.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "6d3b9a4bb40c0ad006fa0a73935732a9cdbc8ddd2762c9cf49d05498e798b2d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.13.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e1d56c6c26b3693154a6c4317e93426f9add92b3fe5eb620a0e3e1d06f122f84"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.13.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "30af969d8fb46bbc608e698866cfb74e9357d2a47c681d37e4e3d423623db3a0"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
