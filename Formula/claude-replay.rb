class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.57.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b8ce42758026bae08d62f254248f48ca2d809dce1ef5c52a03fa231f0fd9cb02"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4f98bb8cc1516f2e9637e1dd14a0bd90a18588402c03369da3e8683df103788c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4b13eacf6e9aacd5b9b4518f0988a6a32d0724b287097f5f6960c1f52d99092b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.57.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f6356ab20cbb59386ecff7e37c277d4c0c05a698d01fbc202c490f4bbc297228"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
