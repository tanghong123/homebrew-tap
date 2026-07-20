class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.5.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2bcfbb9f0de92261513557dd2d21ff27fbf16fb8a18f85f1e1a642da23a9dead"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "93d9f4c6ce6b37d4eba32043dc932aa1ae7a34a59f5f2cb417f502d0245b421c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "edd1b5adf789f76fdf252eac2e472bf8005316cf402cec0a597618b19e15ae02"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c40d13322b91f13e38640871debaa23391777bda4980631d2f1ecd690c34cbb8"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
