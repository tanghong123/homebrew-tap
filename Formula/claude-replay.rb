class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.15"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.15/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "86496f49eb635f5d75b55696951cd237f92c227d476a6f9aca0c30d3908649f2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.15/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "0865a157675d61d0a859721cfe586ab2896d804f94625ee3ee1e3c4a8c055454"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.15/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "af1cf850d23560d9cacef42a735f49d4c69a35cf6e2c2cf8238d714ec7064f56"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.15/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5b4ade3b3a10ac89f5722850cf2ddf08f1d8bfeb222a07958257fd33d48666e2"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
