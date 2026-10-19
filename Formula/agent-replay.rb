class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.395.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.395.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "e130eb02b19fd27efaa7e58ea68b9cd6d80b1e90dda0f0bc378bfb26681a2eba"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.395.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "4ceb9d7d88e09e1aca55f69112dc61e7a5d906c1a662cdeb3d142741992130ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.395.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0572d8ed1f39bb5912b8dffbea9eebc38287933e7f8009c3daff098f4497a93e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.395.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "07b302d9e68b72a7d65d9dea514300e32826e0334266e321a03a37ba5a6f5d7c"
    end
  end

  def install
    bin.install "agent-replay"
    # Rename transition (v1.101.0): the old name keeps working as a symlink.
    bin.install_symlink bin/"agent-replay" => "claude-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
