class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.9.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.9.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ecfbf06b2d14221699a0ef2054ad963fa199ce1c0c9e40402bf3759c514f1e85"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.9.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "3e1779c1e01dc5edf360bf81d820eb1a2c79266f95f0da17e54aa46cdb4deb44"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.9.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "052aba79f69f9350def90fb64eee2c2019fc77f1c8f9ba7e49369faaa0da6635"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.9.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bc59b2c31b536103b18c8771f0ce20e463d97d005b67b571bd91eb97e8a116d1"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
