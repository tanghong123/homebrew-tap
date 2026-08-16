class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.87.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.87.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "44f86d327fdc7f534d4b13a6c4f606b1688fe2a5d46c281503c8d271db52bbae"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.87.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "2311751bff95479a1ac63396815401677922bdb63b00e21d53c77fe147952903"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.87.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a3fd33506d50e9a66004122335fab5b67a41e357793d8a67d76c7dac1482e259"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.87.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "196f76a3362af8907162e9a0067d5bd52c8436be3c190f154aca8d605bebbebf"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
