class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.19.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.19.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "754c538cb783be7bf72a122004da00230bc333fcf0c6e879d0892a21f2684cbb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.19.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "334d8ba07b50ffdeb9f5f15825ff312530db1efa9cbeb31542190ebd5d02c7a8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.19.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0539c0edf144e0310e1d9e2833c9ff3f6e80edd6ce5af0a0772a7b14acf4c859"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.19.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8ed30bfe8661e260b8a986b7ca49455b4e0eda7c6cd716cafca5bbd11c2d40bd"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
