class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.31.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.31.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d8b0d71b803aafcd9650a8bb726ac7832c6fda896e4d031d62e43457afb161f9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.31.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c6f1c9edddf466a4d6e538f6aa5f4a5cf9f806937caba0b47c264181061d1957"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.31.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "98b7eaf8c8cf954dced02d9ee591ce564632e8b16e3acc4d437bf91b86de6bdd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.31.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "079cb4222db47166f360287571a8e198592117a96c5e241c291c0a5304f08ba9"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
