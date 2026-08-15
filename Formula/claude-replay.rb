class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.80.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.80.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "097fb07458a0ce7edcf36c0bece1b21fba104f093c44f2ba36d9887ffa1b1e27"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.80.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b2039774216e9cb09b8bee8915afc56e006ad6ddfd5bf9cfc01a432adfef0295"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.80.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "61d53ed982e57fdfda42b837ad56f3dcb786c1ba88aea9aa42ccf821b3594927"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.80.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ec4324e8376fa4b00fe5a2b73b59571185d8437cd66059cd00d77dfa71caff3b"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
