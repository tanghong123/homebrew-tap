class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.90.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.90.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "30c900a7a31d89300afc71e894c12706022ee46a6af38cb1c9eb26b232f8b790"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.90.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c75142c307fe1c1b32b92cda543dbac9c6de087685334f6c85bc4c1c08f37831"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.90.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b2a8c12e7e1a2003432fec920956bb9690c72af76c40d044d4fcf6c767ec3ad6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.90.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1cc227386fff8eb0cc24ebc1a1f7fa82bb28836a26d2a8256bc390c54558cef9"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
