class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.557.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.557.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "ba6bb270c4593fa4a8795bed849b8580b37df4649f496f9f22331b553b50aec4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.557.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "f250d7b78155c766265eae38c2a8d1729cb79164ef5beb9624c5646509aa3984"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.557.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7c84ce43eb2c7f2dbf2507ee1b62931f882f457df056ee41cdea76234d06282b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.557.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "57b5ec4f605d1ae882017658641ed0d73be7db0282ed88a589cea0f4cb5d67f9"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
