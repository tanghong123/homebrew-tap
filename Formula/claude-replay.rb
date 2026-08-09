class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.58.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.58.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "3e520f9416df599982bbbf50b73088da8bd186d90dbb734bbefe29da1be19d32"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.58.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "09cba2c7ba11ce40108caca22fd7d69082ebd40e31b39333ae0efa48d3e3b6db"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.58.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "30e2ed32bf852f1c50b0523e02ed9804e1ee6a84c4d49ba4fd8ca4697702d96d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.58.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cf78ab9e6c0fd6cf408f336d8f3ba95dbec7e63951c8fbe1765b89447ec01eef"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
