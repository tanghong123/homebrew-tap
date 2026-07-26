class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.36.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.36.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "78827f20283f7e155a9b2ac81ec7ae056a5900fabac0076e3fa5ef96b2b11df2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.36.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "7b6c97b69d1995b8e1a1d865955a6c1f9e872502c1c4ca373dc43eb268bdc506"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.36.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6b5a8c9dff893ea63f90b4e97b3f1543c1e5544109cfd86c93fc35e95d0bc3b3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.36.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2179ecb8599a4db1a4384f895d643ea7c249820379043991323f07fb2c480c20"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
