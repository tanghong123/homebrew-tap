class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.23.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.23.2/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ce86aab0126a49cf64de45163d859a60d0e82a47cbe96a288390924198d70668"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.23.2/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "579ffbff48d154dcc15cdd9a763cb6f3baaf9849a0fb99c020dbbab973ddc770"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.23.2/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ba49207b680269eab69f5bef910c2b098613a1565a2a4d9c45a2e75950550573"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.23.2/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0b613afb01f807d38527e8d872870d2ddf29b1cff82ee58edb1ae7db6969285a"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
