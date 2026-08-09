class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.57.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d562aa02871ca71322d947497b441fc5f041c7a23c2ed2fdc817cebe748f77f3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "6dde4b0189da2f734d9f9ca79364452dd4897af8902f5b35827796ce415cb086"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8d41ec53a81f047a5891a6a60f5262fedd9b20fe88bcdab14c6bbc06462cd4af"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "536c2f4c28807598ca1f77610b26c9b2a545b5fe866092d8dcd0d68c255859f2"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
