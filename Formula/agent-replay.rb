class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.479.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.479.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "39d2575b771d5dbdb9c22041e6f680cfcb82df66ae15acafd005b532614110a6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.479.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "bf037256cd6ce905a5be63fa59ac5e61e4bf604e126c043d07a07fd91aadf946"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.479.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5827c8ee455e5972b13dc342434d67bb6f3872f83a048416f25ed2b017175911"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.479.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "771a059c9777c6640ad1b003a6a130ec2c86f06cbb7e5e920f90c4cf02bc084c"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
