class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.1.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.1.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "bd550bb6b5b9150a24c2fe3bbaf264782c86a049f91cd322633ad20f6cc37c72"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.1.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a04ce3aa86f9cf87beeab497c132739fd0766756fbda1bf7766a37df37a672d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.1.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1a4903da7626c5bab9b82ed27e4c331faa2cb525e6a12d09b0a052f2549cfc67"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.1.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "83d21bee9b3e0108830bc3855863b331ffb851e80a8f4b8dc74be9ae9207660b"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
