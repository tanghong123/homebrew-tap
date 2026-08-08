class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.9"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.9/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0bc5a831af2d4edfd0304a5a2795478caf01a557918c3d23d9959d964c301bf4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.9/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "869d5d0194e9d01682a4d8621cf5a98afc6dd94fa7e059faf3080d18a763fb4a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.9/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b81fd9ca2fbd7e1e70fc7879bac4f0c83ceb04ec87b82b49ef3912c7395372b3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.9/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f47d1991d53ee750d66bd772f68b8f278be3b386393f4face5c2ad1973d7ea7f"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
