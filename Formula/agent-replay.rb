class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.493.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.493.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "da5da68a33a5d40534c0088183037048d0b95aed941bcd2c78abcfe18ddca263"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.493.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "db31ce1f6fa1da035d66108cfd9b62062165ab4cfa14c3d430dfcbd02a1ae2f3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.493.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7819c951c390f53c52bce812dd35e3dab49d9decdf8f36f2bc9bb4258d8b9081"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.493.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f18b5e908e4d01492dcf56abc16a152e96ba26280f9fdebaddde230753a928d2"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
