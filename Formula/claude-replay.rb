class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.53.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.53.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "690696865d48290ee5a31ee9ea3a98732c56f4e76dc53353e1a6f1ac613cc9fb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.53.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d2a59ebe4f0865e81b38679a37ff7bd81bd0e157cebb89559883a561c8fbb9cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.53.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e798b2f3fde5dccb279aabbb651f348de43b320de093fc44052f970eba817483"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.53.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4efc35c69614d1e0ad79ecfe7f6bc49d2dc6ae9bec4528812c805b3be0345ffe"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
