class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.11.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.11.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c0f1833d86d5bc121d2df6f2b94c22d8f985464d3ce1e28cdc4feb40a1931a77"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.11.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a199027a480d8dacf271dedc9a36ccd4e95c21b69c2e92c353bf3d217cdf12bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.11.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f09340de69726dbae5f1cfc4b12baa6a52c9cda0c369d731099a04c28c00f5d2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.11.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ce8ad8867d829badeceb6fa69426f0579991b0a518596e83ab408adeb58f1bb8"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
