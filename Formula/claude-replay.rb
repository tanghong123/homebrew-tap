class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.91.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.91.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b496e9717f3a79b938791de5d4d916616a0064870af2562d985972200ebc511d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.91.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "683fb8fafa9ebc4a4e6517dcd6c29a6cd7cc71b1d11472c7969a905993083af1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.91.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "98b078867b42257a6c472f2dcb5d813b0439b6a898b070778b7b2a3ac8575645"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.91.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4b207d0c565eb7c9266f0d91db5e644ead9e68ba45c035f5deb8da60da3d9851"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
