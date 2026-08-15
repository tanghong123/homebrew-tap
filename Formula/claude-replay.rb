class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.79.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "3460080e736465e3eefb197002ef9d441acc8e25d2bb60afd03bd8b0d3c5ce41"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "155419193fdc7a1e3d44260472526b284a626c0057cffc3111b093b930c31d72"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bd9fea0b8795b0e40ae04d2a6fae3a3760a9ddde50abf6aa83c2777360d1435d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3d673dc586709c77594b053a0f0ff11ce1e2d0b4789d7ed63b476f2c760fb407"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
