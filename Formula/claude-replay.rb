class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.31.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.31.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b895f8bc34aa799a64505a2333ed22951b5155a59e3ba689794785e05e2e32c2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.31.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5d7a75c5051bc6e7385392ee89041e8bed85a5d6649b72617fccc55e0c5c9c52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.31.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f873113f4a0d516f3281da260325fd89b053c1cbc44a24c9e3b512d997122077"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.31.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0497dea287e6137032b521772eec2977de5e30d95261cb21a956bee5a1cfc1a2"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
