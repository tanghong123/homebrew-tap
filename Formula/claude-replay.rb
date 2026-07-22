class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.12.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.12.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "92ef81f0712b19376aa850f3be88ff7d93da72b046cb80c37cea5f8d43a89485"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.12.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b28df6ee5543b551c9a9232ee366c6423a717c204b36e56815ce6b603c451a64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.12.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7399ba624d11ba77570dad918d096500f7eb52967bb156faef7b7c904dd0e05a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.12.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0c27df38174549b231f25e1331eab1b5c815f61683c8e7aa9b9a07a111e000d0"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
