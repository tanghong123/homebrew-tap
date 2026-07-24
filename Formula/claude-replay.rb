class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.25.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.25.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "73e482392ee8f146897c102a58a44072c1df96c0b74f07a102d1ec6925d9bc49"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.25.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "78e285635e621094e14e34c2ad3241415dd4f9f6d53e6c7c5304f4e1ddc78eaa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.25.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "601b68b276a195e402a4f85d270323408dc09abbd4914860fe39becfdc69eede"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.25.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d860234b9ca5d920bd1ec3604a2081b7f9bf714c8a7b4a4500560062a9f79a69"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
