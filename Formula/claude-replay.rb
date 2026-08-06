class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.39.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.39.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "196e5f124245e2740a0459582dc3980b2f6426eae31d5d145c77b5b2443bb695"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.39.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "ac0edb08acb5afb7e5d029fa1186b823b163ecfd8508945b4f7c9fc58166fbe3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.39.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dd7a5f75d4d02218b12ca05c10a53af74bbcba53b98f14d752e8c007cb3df8ec"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.39.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8fa7564841299b80744cf90193f4ed08cace80a83300f0c18015af20732f70a9"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
