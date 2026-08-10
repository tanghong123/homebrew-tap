class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.62.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.62.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "44f4d1ef179cf997ca9643dd0d1bdadebb0563339f82f0430d8eca0279ad3a0b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.62.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "0bddb3c44df67cfd06688baca52be0414bc5a7a68a0ae61a07ca042ada365403"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.62.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e08d2259c0ee9b6a5c53ea5ae5280faf15c478a6325a1d07251c0f47ef115194"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.62.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0862c608c92cea52f80454fa70424bec663c5cc701f2ef3f8cdcadd780d84d8a"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
