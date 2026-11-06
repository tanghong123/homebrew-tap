class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.480.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.480.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "eda43b74c73f51aff8c33d3ab3ca4c33c1fbda0afc25c4c5189e5d74002b9528"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.480.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "9558d8a696f3785cb55705add4e9eeaa3b72896f0969657144ee1537608f6a04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.480.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bbd3eea5a77a08689de19961b0a584ff02a545242a504d2d417df70ac9e550b6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.480.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ea9b643326358b1a35febd009496d7bed9c1db5142ba934e5c29cc36ea754b18"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
