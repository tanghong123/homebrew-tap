class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.12"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.12/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0d9e8387bdbb9bcb9c848a058499dd41519b22ecc8e288763e90a76c69aac785"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.12/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "78a1bcfd9399f8a97ef46b1c04f218292847eb887c2e140900a3ffcfa8b79971"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.12/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "58459c96099704c96931e151943dc31b9d0a1fd3f4c382d1cba3d9a115606c1c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.12/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3ab8c5ee39d9ba6f742eb88ddc18df368985bf6939173636c62d4aac58067db9"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
