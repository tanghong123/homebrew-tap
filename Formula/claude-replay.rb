class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.79.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b40979041474b29fc03687430f82b741854cceff6eb48372748f1ebf22be3170"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "84044f4632c36c0877c7384164ad9bb9dbf66aec616e6edd32c822978ef9b990"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5f126767d771279d3e4484243f1257ce448b726a4cf436b0088628cd5623b453"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.79.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "78b17469a3748489f29f79588a1f69151baa519c1593205af17da567711a52da"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
