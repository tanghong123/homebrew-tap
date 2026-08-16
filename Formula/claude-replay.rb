class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.85.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.85.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c97500787f5846ab77cfa1cc60764e293076c45b75ff3722e014c6d04fcb1f66"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.85.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "73f8290ed26b9ff3e7b2479e92bfc1e9cfe2db731ec96deac74ec7a75866a016"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.85.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d90b3f7be2b1ccf82f2219ccd67066bff1c4eefba9f91f4a379be2dcbb63534f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.85.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eb263a4e744b89753b9c211ae628c1b5d1a0a9019ce9451294be8a927a6d9429"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
