class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.28.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.28.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ccf1651381bea08b796db751a021878ff0c39d7bdcb91a0ffcd2f99909cdff0c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.28.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "3964a179891153a200da668274da2adbdc442c9ce2bd24f54011ed6204bf20f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.28.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "117dc47d805b7740cf9b3e10467949175259b248659143655a9f4e69c8cdfc6d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.28.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3759904dfc4b5ed65daec023009d6e9af1a2de0a069d1390521f334afaecc849"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
