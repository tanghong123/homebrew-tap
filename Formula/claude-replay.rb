class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.14"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.14/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "8ca7c604fbaedb9538c4d59591b0dc5ffe639a88c65f712f0039392edd309423"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.14/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a87a83c89e9b22ed3fdb96abe2626143f661e18adab4696e0cfaca7677b83b4f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.14/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9e1fffcf5e6a9a2f250edeb0810aaca36d9a1d2943cd7368ec1342999a255c5b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.14/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a35b4290acfb3a08de2e3681633c40f829074c91275076465bc6116ba5b1d0a9"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
