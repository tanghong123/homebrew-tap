class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.71.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.71.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "da3a3365ffd9bc128ca7e32b06ee18c4617215d46b97cfa9544d4780c63926f1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.71.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "7f469cb91e9e22a4a276895ed573981708e9a063bd8557aafb4ba28638d9d408"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.71.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "823d64d1ada277e29c50981316f71150b5d6aedc3b7f2e61a0523732ca6ed468"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.71.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cf11289d712abf8271237e2a138c687096fd23f2a813fef4348d6eb567ef1e19"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
