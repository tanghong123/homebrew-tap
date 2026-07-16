class ClaudeReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "0.3.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.1/claude-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d94268cfc8c36d471c88af925ebf1190ea32dbfa89714aeda5286922ddf2f257"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.1/claude-replay-x86_64-apple-darwin.tar.gz"
      sha256 "236a718fc5e760c180b06e68cdf9aed63a69bf507d16fcf3b7e0d32258278b97"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.1/claude-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "275ab45c743ffd2ef8d7dbaf2f9aa78834da2ae94181888e7ee03a2aaef8ad21"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v0.3.1/claude-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b6b9f3cfbd81897bd0e1f0f450ccbf45c6611ce6607b426afb9533ac3a83f557"
    end
  end

  def install
    bin.install "claude-replay"
  end

  test do
    assert_match "claude-replay #{version}", shell_output("#{bin}/claude-replay --version")
  end
end
