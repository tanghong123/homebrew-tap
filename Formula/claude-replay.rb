class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.14.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.14.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b63ffc2a08d320f1576dec8babf35cbefbdbf3be9286bf28bb72be666be077a4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.14.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "3c5598aef34c26d1d81be64495b0d90c604fa45b4bb8fb217e2f0f5014cc5227"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.14.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5968177d72a3f76fbd4fc79507e0ede724c03d79fe8f35061f7e42517cf43372"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.14.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ab59c7740403755ad93a99772e451c33de785f86ce3eef20af64424277f6d8e3"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
