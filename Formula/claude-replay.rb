class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.38.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.38.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "fbaaf4ae3e92199e8ecc7f98786f359264e5f8d6f8f1a09aab37b5a45e24cfc8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.38.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1ca5beb4f0df5c0d06617db3c6fd61c5c2181eea1a2549d7a77b0cf524d23310"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.38.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "10ea44eb3dd3346ca58d2d6a963b07964bd780ebf1249f170fe5290fa234f425"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.38.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7be71007087c5145e305ff6b3f21e3d09f7a701d21a54c545b7f7467c79cac77"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
