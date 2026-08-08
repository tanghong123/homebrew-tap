class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.11"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.11/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "deaedb5e0f16beb977dc61e8ecd31e10f3e26bd974583ba7e7abc9c8d2a567a8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.11/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "980dd319db8ea75cd886d056c8a1c4640a10f42d4e7188f1c4923017be783047"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.11/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9107e8c09e97ac48aa0f04a6dbee60ed32576ce7742efab08e0d7f5e7e84f10c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.11/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a8751c2c80b8d194fd8358f07483c135de9fb9c9e20538c3d31699fd2bb51d48"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
