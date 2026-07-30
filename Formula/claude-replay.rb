class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.13.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.13.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "24598764bfb2b5c91ac905d311fbddfdfc3efc0c3d69ed38c6a31c5daedb0903"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.13.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4e5c26eb3822de741e6dd52e2c2c7aa0f02af6d9b62d7afa66736f9997908bc3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.13.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a30df0ace1fbe860605deaa709964fbda63596038234c2d5d10f6177c0a07d2c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.13.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7f770854f5a0f133a1df33f3db272a4c85bb68b7e08f42b7552356c2b305f505"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
