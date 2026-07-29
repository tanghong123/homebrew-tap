class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.2.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.2.2/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c2c0910f7e7c0b81a05fd79fd15246e4ee9a85b1ffb8f8e59335adac5091487e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.2.2/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a97faab73e2dcd189b09adaee549f11fd3b31aa514d8a5a87765981a8fde67f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.2.2/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a682784f29b7aefbd3977a3a8d551569fa4be3c0d4d4d9264b2d642fbf773d3f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.2.2/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "88a9cef11b1c4717f9b797dd6ddaa598090869281d180ef3f119667bfb6e4802"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
