class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.8"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.8/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "87049268e72916e7c56f6259252005d1da7115266a6b508cd46c6e199b9784a8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.8/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "bd1457e56adee7abf8cd1d73386eab140ac13ae110ba90854351349910e02879"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.8/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1a30d9541ed32aecea6a7a5d57cb94f9d32da974375b0d9fcc09d2a25f4a3f11"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.8/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3c637b7e1a470363f4966074a64fcebb68b7ec895b55273dab41ff184b06c6aa"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
