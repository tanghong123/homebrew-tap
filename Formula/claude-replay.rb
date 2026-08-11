class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.63.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.63.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ae2eab335846727645ccb5ad2f14e8416c3df9fd4ab82fd04ab9d9b0db660b7e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.63.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "db6f0296dff4861337ffa6564af1f7447775552c8449062a0ef10d1e5c2f60e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.63.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6cd1c6eb60dc8b51da5c48b6a5da906365edd9d3e03f999850b9b9f932076305"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.63.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d67becfb904130f62af6b9e90851bb6caa94638d95acdac7a86b10d6fbef5440"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
