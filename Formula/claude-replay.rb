class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.34.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.34.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d4c58286bae06bd7953ad3ca15387f706877a45977657c2629d4e859f8366a25"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.34.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "1036e4a6a811b91abf388aa26af8f4d8d9eaeec4e74fa1ba7691a24d0eacc493"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.34.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4f0dad4175e53a191aa8fb6032c0ac48492a4c20edbfedb48421bc0c2a779a76"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.34.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a9c088ebf960b03f448c798dbb22e86a0bcc81de89799b60647bc8f2b0ba32ab"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
