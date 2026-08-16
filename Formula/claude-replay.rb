class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.89.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.89.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "cc05c7dc81c6aa024e5b6b04746a84237f6dff73b1bbc52ed51417d314fe0cae"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.89.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "3ac02bd41920644e1ccd932b780c70f94ed3380ba2889a24393bfcad0fe8f536"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.89.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fc1452015dc4c05203e1008ce32db319f17f8d7978d5cc58fb4447f1ff429ba1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.89.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ace0a9149b3fa238bf391d4aaf4f21136b7181690da9aeebdaa2e50ec7276c29"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
