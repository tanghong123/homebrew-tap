class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.5.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.3/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "6f00429684690d009184e21fb356af8fecdc6e26ddf41677a71c8676832b43d8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.3/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b5660008b76e0f01fd0a3b81e88d46b621e3f88dd9523977c3e168bca553e610"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.3/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a98a8b78e8b7d69746011230bef7b22d32a686c666372a716e73c558d99aa1d2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.3/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "97a2e75c1f2c73c975914ac55fdf69359b906cd05a25ff5a26d2d2b0b63841d4"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
