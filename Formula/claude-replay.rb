class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.32.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.32.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "8791806b3342beddcd28acb860a884396e3b0a67dae09b0de0f6382b85032250"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.32.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "cc38e66af679fcbbabc29faf52f19098b2b12c95c5b1b24aa561ec549341a20a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.32.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f6a2e3b81d9556e24eb205b1e7dbad8079a70caa1ec041ec577558ef64e72f73"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.32.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ca42343bac46c7d5bd6adeaf64292da8aaaea5d2debbc6b531966d8c3e34a9c3"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
