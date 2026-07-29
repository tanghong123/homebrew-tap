class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.7.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.3/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b4abe9160626fa136d7cd2be8d8f6377044c5e2d04883b59e0214a0631550442"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.3/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "cb573890253838ed4eea468ab67d854a089dd6aadc287117699f807240e16764"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.3/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "137bc0f051f36e9e42756805e7e88fa8ddeb307e171ecb7db14756eca2974b39"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.3/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7cde51e7a934753200d69e9009e6437c480ed58357818709728adcbe07071c07"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
