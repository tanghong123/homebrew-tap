class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.300.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.300.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b5c1c94b32ebb3106eb25499b8276fa92c8c85c8a7d2dd88b4171a895ab89d8c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.300.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ff669ac73abb44cf1080cd0d0d51d50af664b31f3660b0247c3a5dee89633194"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.300.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5475c95b7e4eaf5dd21c0cb12e46aabef44838b420e4332c82a9ad0073064440"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.300.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2216d203589cec043c8db1964193c265b7c1a37350d38107250bb0dfba919256"
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
