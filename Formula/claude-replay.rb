class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.56.5"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.5/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "617542e89b59a785785227248972b0b5d5bac9f088c361814079a78ec05621ef"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.5/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "2aafb4bbbac7513989c1428700ef164fe0c60703b9d23168e4d1f479c158fa21"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.5/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "82b5022d748c47548116e8bd50d2e5a452384735e50914e862fba430c1f9aa57"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.56.5/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2dc7b8122b19eaa785faf09927d7f72b5f84b2e05c7de7f12dbe03280869f4ee"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
