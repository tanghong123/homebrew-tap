class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.4"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.4/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "9daa8feeec381439a8646e875054cb50ad96952ab54353382ff606c9e9cb501c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.4/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "f7caf6398ba393fb841b1301431176f7bc94065036aabd270e3d490499512f01"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.4/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6e2f3b0bbe77ab37f34af0f9c1dc52d1de3a096215c9191c36ffe3f7b5aa920e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.4/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c220711ebe0ebb89acc1dc4ed2c7a22efc303950b2e2571dbababae5586334e4"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
