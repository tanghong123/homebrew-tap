class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.59.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.3/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "1695bcc18747891cfecfbe6aff3cd325f6978470b122d0a9f5044795238d6089"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.3/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "9241dd87aa4665d1365bbdfee979e6faa8ca21fa1013199d5ef8d6055a4ed33a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.3/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7c43e3d3b290b3cdf5cf33ab328db1bd9a333019eb3ae47cbb43ea4c2f1e1500"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.59.3/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e7fe93fc0f3d27780e051b4f31856876e517438f6e642f9211ab37127fbff62e"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
