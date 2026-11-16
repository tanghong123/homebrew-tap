class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.527.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.527.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "6eec5b10c6429ee93c89d04a367a1dbe3e1b3d10ba2c7455a90868fe3aa81fd6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.527.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "9550b6ddb7a8af8b1e49e41958535aa1b652612d62ead60051aeb8dac933af3f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.527.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a98368dfc622f4e2f1e39fd2903d2755abcc89276e9c9c805356dc4e4cf716e7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.527.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "014c2440d27474109e099bc9ee9d37d23557b167e7a40bc1db3637adfc92b325"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
