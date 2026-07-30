class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.22.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.22.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "00aece9e779e9887f4644d5d7b15e58b62e18ea07e62e35fb587bd411bf15bdb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.22.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "9cbb98c41d74e250b9564f75d69f7d18fa4cdc69dc76466ceb0b1a5461221a48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.22.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "68dc5f44ccd77b232c9d4a7c0db4b5cd570e293c682277db266b6b1ff6a4d737"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.22.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "68738c47a3c5f575822094cdd46b5fab7b76dc67399181476085daca327297de"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
