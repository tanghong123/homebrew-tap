class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.30.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.30.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0d771249a61b0cd662f1e9ca050b66f3eaadb503fb2959ad70a64bc808d2f3a8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.30.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b9cbc50f7ad7d6f81cd3ced8a0525c8f2241abb441a9e7f9465cb8052911a14a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.30.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4e3dc3996b243c1d12b3fae1cb963f6a774de055125d2e94e865c75224a896e2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.30.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "26b9b752b710ecb11edad1b708787bc155b66a04a0e24a17d280e817d38ee91d"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
