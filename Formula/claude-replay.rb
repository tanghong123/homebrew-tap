class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.6"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.6/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "1edc7070ef85cdaba0fbf259f698f27e65315d29148e7853c6e3f5b4e6bb68f5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.6/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "038743925f5d8d2b0fce93b8594b89a49cf347d813376a5517ff4b84cda42e43"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.6/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "921f7d1adfa3cbb7c5f6008a983a5fc2490798787988607f789f3bcfef108b76"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.6/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f2f4d0898f2959ba319671d00c1a1a9b273d69573f61aeb1f678d77c959ee742"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
