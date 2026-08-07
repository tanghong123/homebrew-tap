class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.47.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.47.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "838940aa7649f76d2bbe1e3c3cd96f2cd7568f19dea8908eaa4e6ee732a2ecf9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.47.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "2a68e3d2647e8cefe43153ad72b7a6b5b195b7f34d3d33a526b343475f7cd9c4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.47.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "512a844677055ed30d8f696b0cc5cac4c68b860b3099620aea9b91823724d417"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.47.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b22dd0b937b19734519ca1c87ba1632d479e74a04144be8d8987dee1fb7f7fa1"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
