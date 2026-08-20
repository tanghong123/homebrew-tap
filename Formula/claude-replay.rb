class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.96.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.3/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "521322f230dcc5a8e41149053032907968c10b1cadd503535c4a3e0f18281f5e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.3/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "9de27a84ac04ab20590fb1e62c66c2a6c135c071befbb0ec13881669d2c8ed8e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.3/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a9370ffe36836af478cfe188d77f2846081cd06eb25651d2b26dd854c172f23b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.3/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0ca274d45429ef269193d5ff2bed2784e89810994f9cffd72b3112c9d702721b"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
