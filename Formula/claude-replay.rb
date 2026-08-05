class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.36.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.36.0/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "4b5f14865005b4831690974fdee37096f2a4baee85c2e6f9637dd082dbac7db1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.36.0/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "779c7f2e386b292374d52dd7e3cc6113973cfd33e23893c147f47bb091b426d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.36.0/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "79ff7b22d2a8e4215c37f56490919ec25706436a31027b43740e9720377f8ae2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.36.0/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "146c6a65c109b223a2b317688be7c1e25bee2e1b301fbdca22171b3fb81a7f54"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
