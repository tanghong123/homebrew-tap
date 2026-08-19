class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.94.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.94.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "0d833c939a78842dba4e5f80c8f60121817305c2850687e7220e3961b23f8310"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.94.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "94780e4aeabba4f36c10595e0c312e89fe0edef1189dc82613f632ccc0de3868"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.94.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1fff463b23081d9e22cc5e97c776df0ba88f6a3fe2df186ecbbb0e3e3f777a28"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.94.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ac0bb4f629e5ecca687ce30a6b1a657c206aab91b98f493409fdb1f251ee304d"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
