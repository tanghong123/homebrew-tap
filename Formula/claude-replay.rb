class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.96.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.2/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "28c2cec3be0dc9c917dc03be6c97b4a9eff369663bc13e4accd1a0dfceed4013"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.2/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "c77dd5dc483989860c3ac45690b4d69c737caf1538b3b5b78d21fa721371728c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.2/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "270e335746cbef284bbc91791b189cdfe1b40ec7577dc8aafb198e6563a7c079"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.96.2/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d64efab3c3bb4e0212330142fb5bc9a6eb906f5539bb43dc4ecb79f49e55fc76"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
