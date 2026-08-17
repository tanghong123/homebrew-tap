class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.92.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.2/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f2a872d31a1df4e732d3a2934e0615bb059af3bdccdc876190a19c930a6016ae"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.2/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ecae27ebcb36a742608d296fb5a2ad3bd534f41799bb9f4d9d5b9f0ad5fb7554"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.2/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "45d0693fd7f3a04dd8a2e79e980b202bb1157af5fb1b7084b9c25ad691a77c2f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.2/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "50e4e7977acdc6bcc6092679fd696a9511e17fb3359dcea16a1d7cdf9f2768d3"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
