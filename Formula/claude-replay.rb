class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.99.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.99.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2bfa32dfaa556fd65acae9c422f1e8187d6ae88f841bd1ac3a0e487c977fb311"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.99.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "df76c7e8a4f22fdf63c3de383ee4a645726c5b930ceceaadcb900c6ea372f2b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.99.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "845cf6ff8d32fad001a56ff2f7a2d1a9664ad0ee2c0dc56850467b967a093468"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.99.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d4117cb1b2add2eab5732832508bf46087204ce8343ba2d7534bf93921485e57"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
