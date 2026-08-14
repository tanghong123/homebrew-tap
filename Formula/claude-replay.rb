class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.73.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "afd86bc1e090057edbeb28ce6b4b6f23a1df1a3676c2d5a43423ef11feff2a1d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "92e70e9c110ce162887b52308591d4a2b85c51947e3418adf3e053d7f7bc7d22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "712ca1c95f299881374e00bbc5c6087e85e6b0858ba5a76ddb56008561bacc83"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.73.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e395460767bbb3bac823e823acd5e5ae303c36d58bbeb855dc00ad9bb60697cb"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
