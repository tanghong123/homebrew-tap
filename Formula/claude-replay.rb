class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.66.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "bff0379ea50949b960c0f6f93f39ce6e3fea85ab491b590224a40b5eee1369e5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "6dcc5b544e8a0194c032357b22fe1de5b433da9e44c3df3ea4f2844782fbef9c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "129d2281e5c605da07705657872c9babb996671c6337959b2357fa416fe27547"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.66.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3aa59c035e4e156825ea0b37ee25f9a8ba432341897bedae38a4105cfca0334f"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
