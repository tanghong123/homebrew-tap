class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "a32d88dd90fbf78ca748de978db1d01ee564fa178fde9ea28466a67ec3b7f369"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "539d3ef7fd3b1bd925f5b4bbdf15c13f3d4372d732979ef651df7718748cd714"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1af190d0a46e100b86895e305a622041354cd75924608139e0ed8b493f2ea4e4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "92c43432ae2a8fb3ea0fb6af786c2a08a76b31dbdfa4ea931a0e65db22642f49"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
