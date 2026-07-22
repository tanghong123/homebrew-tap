class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.11.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.11.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "5d299b3708c475f321bd47183c4f11cf22b858899751a16e3bb3e3a38f213d80"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.11.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "186e253412c91c2c42b94d9304251a7457dd0a4dbdbaa5205d8fd610450d7d15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.11.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b3bf052f995d9e39069501f12a8957028cdba3d9fd79afd69b81747ddf5b2800"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.11.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a96b7283544b0065c9aed307a167c76e27834cef1cc77a971e4d73f384070774"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
