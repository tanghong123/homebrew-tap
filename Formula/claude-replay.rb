class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.95.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.95.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "47b50935668bdc18aabeecd0432dbb18e215e7602401dfe013bc2b7d61fe4360"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.95.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "fe8a1a3f2c630614bcf0a0e6f7e455d46b458c1adb903be593b7e37d95139dc9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.95.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5a65bef92b1b8d74b0c2be40d58760350470e8f85baa761916fe335191b9b927"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.95.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e16021b1dd4900be881bca5c8f45a918035bf677612d2ecbe817ed6c42dcc5d7"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
