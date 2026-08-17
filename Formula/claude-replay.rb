class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.92.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "7c8bccb27b40a7671d5ff41d5369a5bf01a1091e3c87104e31eefcf6a8fabba5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d1e87ecc31f6be3dc8ec21e661fecdf33857165c61572e02341b8338a4f8725c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "62e40ed28155d1102a95c1f3d84b848a24368af4000d48a2257d468e1ad10ea2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e2f0a7a664ab563b88dfb783eee1b4251e58266b78fed10aea321d965a426c3e"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
