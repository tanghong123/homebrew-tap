class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.18.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.18.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "e6fdafe031cc914c52dcffff6b07f4cf19e7fd6214a68ddeacbe3be741280994"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.18.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "835cf1da87fdabe542cbd2473c8b0c386597bba4bf6583bdfabdd7f54eb7890e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.18.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6206d6b63730534d92db8dfb03c2ff741ef10157cc8f28a78541ee13a8f1003b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.18.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fad84039b05d5c6eac1d2f4a6f8168dd5934860cfc93374bde044ae900b2cc29"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
