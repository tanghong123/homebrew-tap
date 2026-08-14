class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.76.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.76.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "c27da3bca674049c6db855b1e8920f016911253e08b27d07a9da0300aa6445df"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.76.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a919bd40a6b625daa0efb7d340a3934c52dba836b7af0df62c948004ac5a6bc0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.76.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "887fccbb9751a6c85f2bea901e45f15358133cc81c5e7fd75e31c31c1fbb79e4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.76.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aef5d9cf47c804762b0f2c6a644c8af367e712e09cb1302a3ae6ebf63cbf47e3"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
