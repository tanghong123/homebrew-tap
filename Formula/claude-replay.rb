class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.37.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.37.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "8e63899e06c0e4b9f2fec2fea91b3db09fd09650841c67f12a255dbb2261fdc5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.37.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "19e649635c2d1191ef9ec8710f8e61c28f82e2dfadc4ab165f8350eb9df18f22"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.37.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8ff343db7ce48c08ee4cd2d900521da1c669e65b505ba2358a0c92ce26977a67"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.37.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0b0a8a0a85f89fd3dc2b2d05e6515865efa313fc85714f7468566033ea16d18d"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
