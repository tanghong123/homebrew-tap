class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.27.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.27.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f0f1ed98c6ecb7f07f6d69740dc9915182fee5eda730a0d4374d45673d269bcb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.27.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "8ca29a5c57c680343a0d7c39915a6bdf0282efbd6b4a86c1551b61a7a522f2d0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.27.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "064dc5d1965b4445628fea584026df9d4fd1f9b2cfd906211fa856595836f1ac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.27.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8101e75c45da9c56354e03560b5d603d72b74bc888623a12da79e2c5496e11ae"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
