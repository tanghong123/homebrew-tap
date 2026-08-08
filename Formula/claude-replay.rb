class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.52.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "be9099694284f7512a797c7f26dc56672953351ad8934fec1c9df4b93c5e1b70"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "708bb05b1f9f18823dc8b864591b3c9f1f2816f13f7e189759f1f3cc02d244f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d913c8b590d204e6b0dbad15d12ebb80949106e45c629f1cb22193a0e0e22e56"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9810e2c1eb38813e5a0ee099133cde4927104b82c5982301224fb633604a362d"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
