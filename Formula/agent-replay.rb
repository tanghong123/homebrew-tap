class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.147.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.147.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d8d0675778d6d2c74072e854fc452560f8d9c571e72000a64c1a7c6b63e82c61"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.147.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b9f80eaf66e5c64f972be03d89d0637a0220bb727b62f4c68c6cee73a8eae434"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.147.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a2bd4a27d82401ce020383b10c1bddd41b894b698afcd0d00cf8ca5385f895a6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.147.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "44d155203706d6e92ce40548becabd0b8400d9760716edecaf2525cbcc24df7d"
    end
  end

  def install
    bin.install "agent-replay"
    # Rename transition (v1.101.0): the old name keeps working as a symlink.
    bin.install_symlink bin/"agent-replay" => "claude-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
