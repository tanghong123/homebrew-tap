class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.17"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.17/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "cfc4303d9b2b4c6ffdd59526c4a252ea853744e12e0d6f194ce9a98a7dc9c1c1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.17/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "af99f9cbfb0a705bf97476c1fce21f273e8bcf56b700659f7e6f4199d3d008cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.17/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7e638d2d217292820d8ce7e2839a9f757284ac6f14bca55aadd592827517a5da"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.17/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f4ae0cdca95ff11d22372c786b717fc1ad07059240409a6eb95b49ff1d3ed6b8"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
