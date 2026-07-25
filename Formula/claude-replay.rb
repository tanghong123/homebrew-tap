class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.25.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.25.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "416276a01612fe4cb6413a78d3ea58fea77fdaf628e16e8b2b5f3ec63efd0bcf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.25.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "e20f7068401f3dc9999983e291e0e2423cede191101f69fce54459b4f583f286"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.25.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4f474c8722a7229b818ecffce251e8f97a8c9f7754877c6c57e670e07ba6e468"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.25.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b9e1ff9a475378456715ff9570480ff297659b4f45a6ba1efe48406f04f9a5c9"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
