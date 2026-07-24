class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.22.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.22.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d11002da1439acc09d0a2080161d2702dfdb96f4524631470a4e1eace6344e54"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.22.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "db02e73e5673cbc0652485dd57532addf71231c73cdb4e6ad5d60c8f4816d4d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.22.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b2b25773e4425295f39976b709735d1b1c75fa84b7c68c388fffd19947281085"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.22.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "12d39386ae3fdace3571c408a033717e0e7342d991757fa72e46dd28261c9e68"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
