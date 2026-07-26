class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.34.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.34.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "bb027aca76447a6e4c200a4a1c7ae1860e11cd3bb1c2089c03d59c99c604a783"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.34.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1f5c36b6462c912e0adcbf9d37d88caa4826e08078f046c2b55e9a1eabdcf57d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.34.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "050b34cfe9a5d694b03116347f3f6e5d615e26b93d4ce3f9264a80ebdc869312"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.34.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d407a7c4ae23d914e4eeeb3b61181f923585ac09c95bc2bc2abf5919b8ee6e38"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
