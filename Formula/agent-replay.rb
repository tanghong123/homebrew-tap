class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.517.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.517.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "e5359b82bd016577555990f0712863a003df0ea2c5888578cb240902e6e04720"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.517.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "8e0d4fc379c4231ee1d209e772a8ed5099892ebc07ff3ff5004319122ffb411a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.517.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c62aed4db9a2a914e63c40550bc350530ca1fb005a15a98a12db449aac5b54e0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.517.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7ffe45b7062d6c6f15341d858c88007222d3063e6350ba9d269298c56b871846"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
