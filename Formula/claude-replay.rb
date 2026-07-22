class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.14.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.14.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "e1cf8b32af51cdc27dfe974acc9ee39496b1252101394dc32e44ef9bce05be7e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.14.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "161d5ef0ca2e5705051666aae00b8ab250ec5dd6aed2721b03ee494b1c7dfe06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.14.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3728a942834f5ded77f3f162ee1bcf5c62be403c47eedb9bda7b54022b5b6688"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.14.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f43a96d0e24dd4f4b153d5b38df3a2b0fed13c7b5cec69b560f9bb58c59be2ef"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
