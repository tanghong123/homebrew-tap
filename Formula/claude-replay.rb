class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.24.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.24.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "3cdd68691afc0cb7113c7cc7361c07b8d3c393bd8d0d161d157a6ee683cc20a6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.24.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "954636bd5394fce3fc2ade3fea718c6c9f756110acb69dfca29d92517df86077"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.24.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b4d24b3e4e4e9172116d309e45d17cc50cfbcdc75fc244bc936b929f71ed1860"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.24.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7f62983bfd83553e6a9a414fee94bff4da736de37bc1aded5d8d3f2ea6543646"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
