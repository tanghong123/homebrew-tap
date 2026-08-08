class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.16"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.16/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "55e4a150aa23deb247db58ec02c6013fff35d66b87ec7299ce03bd53bc68076d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.16/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "3c33b32257ff5382cedb0d7e5735b78a541853a634868492dacc8df7814a0ed5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.16/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "be6dfb7e16922128f8e79bedc6848ed6a8db6783eba23bbce651d65f0afc8a9c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.16/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ae9fb75dea25649e4b19d1841c7f5fc260519ad044cd7cf542fe7ad74471f3e3"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
