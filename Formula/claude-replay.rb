class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.33.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.33.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "526ac47b776bb58ce9311d331faad9e34af162f4983332c51a7c04a085511782"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.33.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e253654d6e8c36c8c62d65cf49464a52f0e5cbcc3241a4019990fbd3fa36347d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.33.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ea6ea04a806befec5e12b32718767ca6fca3b41bfd610bf39d89dae96898c506"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.33.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "807904eac3d92a8c3efceabbfd076cc1d0f5787159ecb07bf8bbad917fe27463"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
