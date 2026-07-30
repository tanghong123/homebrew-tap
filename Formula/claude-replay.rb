class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.13.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.13.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "38bb814a440cca0dcc298f0747ac6498a766a280a8f4af38d2258a6a1105c946"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.13.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "d9718bf734b56f20c7d61244a4ee0e937523fa02b5d0ce282d71daa3cbbeafcb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.13.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7b7bfc4c4b571970c77df73356861c731d2490e527d13b794cc98074b11089cf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.13.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "60140912c3602d2b5db87d8b20a590df3e1a53020c51ca1c0b883dd3cd4b8126"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
