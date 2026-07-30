class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.17.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.17.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c2293b9a590f66338247dc6f74f4173e14948376be4116b80dad47c67188048e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.17.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "3bd5d5159ec9ce9d4e952952f0b531a0065f00c81fcc1be946085296bb1726e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.17.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ee212872b0bc06a5c65c56513cd4abc476d519e52db29604d77f7f006b8235ee"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.17.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f1f5e58e7c0731b9c3809d141f35265c6f96f963428753ceb4d6e447ea8f0ab5"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
