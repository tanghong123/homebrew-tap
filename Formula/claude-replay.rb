class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.10.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.10.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c7747ea74bc8a8aabf6a15e619aafe3eeaadd5e2e20c170f93058739e2c4fad2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.10.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "129f5000fbfb015b8b4653575f506f25d15ca588786e1960e43a0a42c698070c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.10.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f2082736a8a20771a445b02639d8387cfef9b85fb07a05e23281c4ae1486657a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.10.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cfb8ea89c9f74e1444e96419493e92140f3cae84f9bd57f5abf748bd51be37ea"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
