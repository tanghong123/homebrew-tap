class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.32.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.32.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "405846c55200ef7f09f9be58901e62303af1a84e734e64795359a17fefca8f3f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.32.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "7e2fd76ddd173c120f0c481a16e532ba05e8aec6afa958cd60a7b972af526562"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.32.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ed6fe2e4d2592f131d8b234536721632eb9782984b2477de3aea6c12b02a479f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.32.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f676094b5ed5b1530267acdcd69db340a0f17a2671b4c10666684cab037c20c7"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
