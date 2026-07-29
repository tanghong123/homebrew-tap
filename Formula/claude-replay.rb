class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.7.6"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.6/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ccbbea8a68e89d7d4fc243545e1ce5ba2dc482f55f7b6bf73290e8f2965b4a66"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.6/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c2aecbb4bf535cd15d96e47a8b7551f9be9a1894c45ddbe539a87492dded8282"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.6/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6e16222f0e72a93a49096e4fa4f3ce5d2c8e7a98fbc93a84ae4674f325f7af11"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.6/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "edaeb454038b6f021a6a19fe9a25d643522535b0f2af6a1cd7276a83280c0ee8"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
