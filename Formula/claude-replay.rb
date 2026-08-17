class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.92.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f11840e86c69cac077006be4164603daa0954598723b7e115eb22e22665ab1b3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "00ac8c7980a80886926147055cc475151ac1868f2dcdb52822a4d45720644696"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "987a78e8d13b2e1386e1db5e1c1dd20937c40e1540da707177302fa6f56ddeb2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "69aaed1fb2b4f040c7f1518796cca5d3d23f855a41ad58e175509d3ab0f6cc65"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
