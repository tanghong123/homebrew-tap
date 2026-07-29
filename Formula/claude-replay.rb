class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.7.5"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.5/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "e8067f4799a9d7de04ab2965be18f47c2e83cace03c2618c573d4f57b795334c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.5/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d998c51e186400f0d26b5ba3ac1b5381a450c4b5a9eda5dcc6dc7c6b283ddd6e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.5/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "50861ed3bf03a210a260a117744ad867d6d0010f854f9c10f24c200692e74bac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.5/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e1b6a2efe5d9648fc21aa77a7389a1d619e0ef3ac7800929178225b1401faee2"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
