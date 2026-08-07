class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c01b2e85cf3b1bc15eae922a6d10835543aacbf657b77bc1353b35eb148f9806"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "856c7360bf1e6632cd1652280ff47988e0fa928412d14cdec3466298b22fa1d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4424b8009308f4b64e86cf8444b6fa64557354d0baa70472c94d129d7cc8dccd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2595dccb8990f07d6d204f9b8d9d166e1430042de300c1a41b874d05de1303d4"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
