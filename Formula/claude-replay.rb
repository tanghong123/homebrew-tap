class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.9.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.9.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "4c27f7abed4dcab038ab443974cc2b2947391592a5dd5d89c51d790c9644161f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.9.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a2d840618659fa1112f66cad35719044baabea204bf88c2f617fde59d5d056cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.9.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d13f3557e44447d8dde3825c3aed7981cb3c5c0e8ef2db7f96d2112465523257"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.9.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "78c841f19b52e92179182ad27c4606f52c4ddf201533f29fa9c1556f361a4954"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
