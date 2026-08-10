class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.61.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.61.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "275fff705892ef2e706fb697cda21c89d76a494fffb1f05468e54e36a2964d79"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.61.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "40894a41163bc1cf3ee8a49ffb6bbc53bc71cb42e3e8bdad0a5a978a20742555"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.61.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fb1cc05913672edd3ca27e6de9ebe4ad66d351f6d97ae33db640636bc240d704"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.61.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fb130b50b74f5ab12e233e63a6d97c465e08965bd55a35959aabb57bbb1c8520"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
