class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.3/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "8d7acbbc26d9534a61edeac39cd9f7b40acb1ad24aeb88503ef55e91c897e79c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.3/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "f6ddf1f35a94840f818ec22c816519e76bdb692042f0a93879d4e0ec7916c9e2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.3/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f202dcc9f49d9b289662ab4648a8bb6f664b0acd711d67f5638e7e1c67f3572d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.3/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5041cee27a4add1066dd5873b487e66700b54597bb8a52119206ab5d7ebafcd0"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
