class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.5.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "1e8b28d21ec8c9daf2a2668045f0b9b47f7ff7b279fb331ef54ead84b9c5ade6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b76f1368e6df11e014b31270a3c583ab20ed944fad259a98968a41444b57f8ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7362db360a16b14dd9b5db55fe17e12f5605c4f11bdb24262effc82305201108"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aa98c2a4f9b2f4791f282ad42ab9d27f888aa68308177987f595568247940d34"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
