class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.523.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.523.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "b38d4bb93ec8f875190c48c2baaf5303715a950eb35ce197b0f4045659c7af3b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.523.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "bc13ae9d43825b5f269f57036fc9bfca1b151a63455e1a9785619337d77b15be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.523.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f6f55704a170a0a7715c666e77e1fa5cdbdd9d9e552403f81768d512661511e9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.523.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b5b463cf8a0f8a5b78828b57d80e1f7e6d40c2e296b78d236c3d2ea09e9add95"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
