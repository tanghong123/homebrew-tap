class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.97.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.97.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f849c9a530653c23e64ebc0c195e385ec094be76e19db96509b5f507c073053a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.97.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "679d61d5b66f0789c3c9017ae8741cae7fb7299b468ed9110e2331c1eea5a92a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.97.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bb88229b876c68f7f23303f4e30b72ee550196a63d2694feb32a9fe09928b1d5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.97.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b2b8c3587d7b157389d624f9d718221f684b236ae485ff881d19de80033a543c"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
