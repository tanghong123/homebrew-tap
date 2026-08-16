class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.86.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.86.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "cdc63d899f8b51223e5238e045213ef55c7b5fcf6890fb2709062b1d0994a4cc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.86.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c8a378ef72dd9585a81806fafc51c2fab12b45c7cc57afafd641f58a2cbbab6d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.86.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7337935b80b0440bc0c14520a3979a827d9770be643b3b11d516b15c7c4c42a0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.86.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3968e71c1366d201b5ff5627c9059a37cd37de4ef4ccf09074ea0215aea55535"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
