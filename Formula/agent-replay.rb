class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.575.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.575.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "1e64b422b94bb73553cf20e6ce1433e1e75c5f2087916ddcdc14e79dc5ed3191"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.575.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "84ef4bed4fd2c8f08f159c7db25dc293151b63c746fc96521a9d1e599a533995"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.575.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5c732c8cb420a49fc12c4456cfbfa89ebe916f2ba611cafb926e047223a9f8ab"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.575.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ccd7cf441edecb2e53d5f5b84c02921f466b8e175dcfb175348be4f24d2ede24"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
