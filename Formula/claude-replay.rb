class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.15.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.15.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "8d4a5e2acd1d712a75992219573541b60bfcfc3732d1ffb3620f3ce416294e6d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.15.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b731b121647d750f0dd4e971c6f75b1b582883dac5386759a9f12046433ee8af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.15.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8decb4102a4177524f8b7c6a52ed55d87e4f10e31b6fb14623ef570f6957f3de"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.15.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e6c2ad2bad64d37cea2cd6c9b3c00f9a6c742f72d55a82dda9e5938499eba175"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
