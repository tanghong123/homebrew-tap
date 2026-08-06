class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.41.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.41.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "73dc7c3b8d98ef8c27e587ab9a99db1740c128d691dd870ae050bb5935e2e90c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.41.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "379d441d003399e8ecf5dafbff86ad1c9eb7a68355890ee5c7f61728f22c098e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.41.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d79ef327c1c2f29479bdd8f3e9ceb838093d2812edaa39ae7e13c0fd8b0ce986"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.41.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f8658087295adccdbdc1a034a57a6bf5246c6404dc030ecf3a1cd4911be0f82e"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
