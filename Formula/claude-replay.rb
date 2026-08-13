class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.70.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "9b29f36a2bc45b21784e85ef05d0699f7309237c7b150cfbaf928089d6b66a68"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "5e0e048749975c093b2853c8a5415bc34867fd7b6bb809a9b085f8bedc9aaf52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a91bf948213e765b063675a51fef73d98afb78da43691f7487350cb88c502bf3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "64ce4284b7988b6e4249112514fa2724069eb640cb9e1c393271767f35e7596b"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
