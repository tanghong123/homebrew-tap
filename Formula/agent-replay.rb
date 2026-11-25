class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.566.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.566.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "11305cf180c55751598098e931cdd62785d806ac5f03bd14135e1ffed5f60815"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.566.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "effef2f85b489ae8f66f28611fd59937b04e663c89e296b03d3c253eae03a69b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.566.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "05ee06f071a8443d03581a7d48cd06c0f4e72171f462e466a5903d00037a7ded"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.566.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a223beb33e0b7490bfef1bf20089c19dd3281d816eef61d566e30b4b219b186b"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
