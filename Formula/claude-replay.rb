class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.5.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.2/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "1137fafc180d449953c0471c03f09954ec0037e2788305fbabffb8d46dcb3055"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.2/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "8bd01a5b30de2dbebf0a07aa52124d3da5b05d10b530236f3510ed6c540e522a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.2/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "800e059b9e4198dd5776f1b4d9715d34bbfe680204812b8b8dc7df95ead1bc41"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.5.2/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0d4e71ab6ce541c4f95df4349d216a633fcc2d5dd264b1065344013789ccdd76"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
