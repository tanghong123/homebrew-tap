class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.56.4"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.4/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "036888b206f878b4ae383854e9f890c2588e242d12e55f08f9600d58b7c1ca7c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.4/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "f8695796e23f93ea0f29882a32a9a4ea687aa77be79385a0865150fdda158070"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.4/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ca983d2f3b4279fe2dbd3bdce0c8c6d4aa428dd304ef4487ec59432a3a3aa4f3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.4/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "501a7c438df69c7767a334558ccc7558802ccf8b167335eb437721dba5b6a46b"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
