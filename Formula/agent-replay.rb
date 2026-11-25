class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.562.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.562.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "d0e77d0da908dd270ef69f883c4925f4f9fe390a267956e200179d5d3f2695e2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.562.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "f41a7fe1cba6e888262b35a24714c3a87ce1c68c9e35c4a3a29fb1992d0e99b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.562.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a7d6489558c0b97fed9b001bc9952a961c8340e6a612820e2dbb5ed4eb774f98"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.562.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6b10cd0740157d31b899d2c3a795eb0f50129cbffe85a31fd0625f0b2e1c4913"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
