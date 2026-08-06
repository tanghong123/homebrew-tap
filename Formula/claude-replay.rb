class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.43.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.43.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "cf30acef974ab1ad6b161b5b374ae066f83611b1be9dfc5fdb5c1ebd004221ef"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.43.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4118c68113413daad687029eb6d8cc432b4c850cae286aafc848b7a4fd105b2b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.43.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f8e43995b60582748ab9c39043a6c45de93d0d6104c4b59d4d5c3ef1d609a824"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.43.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2413219e83a165159a675635033cddd982551134e497e83504226551c071b22c"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
