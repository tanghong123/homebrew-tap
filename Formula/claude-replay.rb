class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.7.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0033994e5863b6d0e5b437c9502735346da5895452044ef5f135b999cabf7ff3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "38c7e67182373f527bcada8499030b7b8deb8af14b270cc4424de4f12d2f8927"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b8587fabab53cbbd7172026569f01313d93b6041ce1cc242406a3fd874b072af"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.7.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dd1e6e2ebdb218bab4b42cbb03e6c048fdc0a8fd8ba9a8059c38e2416a6f8452"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
