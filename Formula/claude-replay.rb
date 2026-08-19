class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.96.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "9b85e2f97dd22dea9eb6f5d6d841b1ea4155cd18eb7c73b061571ec3bbfe84f3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "067414df4a4a0075f4c5091e3cb50b4baac55fbb94dfbbb6b9d486d4030eb55c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f413f750151280b38ac1fbb6defdbbd89fa5abc9a9060d7311a99b532bbf4f3d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3da954a3606df57b03de940813ea5373e43992191dbec11e3d9f547bfbe114b9"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
