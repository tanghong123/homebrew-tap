class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.496.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.496.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "2cb104ba3e6f057fbd41e59346b3598d81be06e2cc25cafee6ac8e5058d22be5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.496.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "118f14671a4993540f0b7aa015f9f0fa341d1686e99db40cfb4ba524fac8f66a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.496.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c69615a7fd0879491a074efc024f9f7c9f8bd4da1c70cc5b76d4efbb0f4cbef0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.496.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "65e7558fda57124b8186998dfded6eff2d880b7f93d2343ba6a8a5027386ff24"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
