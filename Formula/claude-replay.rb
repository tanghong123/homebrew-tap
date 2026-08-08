class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "fd7153604eefba1e0eaad7359f403a41b7cac0f8c50d468b9bbfa9630b5aae14"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "63c5265251bdebaa4b0dde641e31835828a2dbf5ca96d5ff2166d06306e48eac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7be37a5119c661b4f7e1fd218992535dec14b7f7232850d4de2ff3c7018517b6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ebead226d3670432088d606415d7b950692aa3992406d11ae44ae85ae05708e3"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
