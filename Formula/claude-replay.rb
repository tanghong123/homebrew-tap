class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.5"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.5/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "3ec3cbc2046f3a02d42552d12d85bace480ea7dd36bc3abaf8a436a2f76ad036"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.5/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e9d91d3ad6cbbdd9b8e0d3ab5839815b49fc836ae93871ab666ac20fe9bff086"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.5/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bcb13eee02d7ac466c63099aa8435d610464aaef176b397e3537f068f73796f3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.5/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5a532dcfca3e4aa737e834747f447131c90c543082d29cd86138a3e0a163240c"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
