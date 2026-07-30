class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.12.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.12.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "913aa6ef5cb9361b6e4d730b454e6a4acaf622ee813e3384d0a65fed8ab5978e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.12.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ac51583fb1fc66fc5f8abb47150a47eb127c3ab8e2cc30cb5e4d4f1b762e705e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.12.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "33dfa90ad123351bdf76db31810b88fe6f05936399f9f6e8cdc7ce4f83b27598"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.12.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f77ff6bb52ea44fa507ef21d82785fd7bca449c763a66db22fee4f4f40734c5a"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
