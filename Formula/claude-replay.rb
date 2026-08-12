class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.66.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2e93c39e04492a6000f8a04432e380faad718e76772781a940d1d27905413e8c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "fc688c7ba1f189ba8c52ab9961ec6b742c9d3931a72bf6c709ea5ab46f2fd401"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "535d5b70631728d4c3c55506fa6f0ec4a0138e2aa75bf005b39120a63c88f5da"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ec655bce22be096c9000374637a7077750e959ff11538a325857903f9b93d420"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
