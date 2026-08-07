class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.49.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ceb3cf5bed2c3710a38647c8aeb83e04d3aea9a061cac80cfeb024ece43c45d4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4c064dd8c203de2a930dc20b50265d9ee803fe53abb1913ff826068bc848b54e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "57097e4377191fdbca09f132f49702d175b81e4e0bdf93eb5e55c28e40000257"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.49.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1a35ab131a78d52029f3cc21a1e38bb8015d5994becf96681e7c86c2ce4e8902"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
