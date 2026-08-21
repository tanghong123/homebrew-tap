class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.98.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2a70d3c9e4eecefc8f76b106ece81600388239d149bd9c357c4ad0fa8d70c83d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d1dc76f320bbb2bc477d51bfbcebc87d204f2091191609eff7c237798868866f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0bd3d698a9caf4ed3434fb220a8d4c1cdf3602b7f58f35388e237059649e5df4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "de65740a98ade28e8138a8c2cf2e328a4eb4b30a2a5264354ac67e013cfb818d"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
