class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.52.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "3e2b2a9d514b9d809390e21a9fbab0c9d2a39454e4a527a5e8e2014e6e8bea61"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "b7dadd5d5dbe1ca8df27a40ca4154f421be691f4d9298f57c219d045f91312e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ad9216de1cba2dca8734e882d5f10327813c5c3b8c032af56fbf1de855174fd8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.52.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f93900e0badce9c846c3509b1cb65d036346d3cd17295a2fe528b34287df3428"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
