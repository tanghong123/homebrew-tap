class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.20.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.20.2/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "db177cd677c4c41cdc32bd65bea15d741e9da6426ce4ea6e3469e8da31998bb4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.20.2/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "cfce51784b23576e12088ebef1ab8690393b48de0765019effc3a5f4843e7f00"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.20.2/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3791edaca58acdbe07b0f306de71681e5a0ad4fa279a57f25d1b70fa3cbdc5b0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.20.2/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "98e8ce85089b32cf06da37d37c231c71d35ffada488680560a8745cda4a9ab66"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
