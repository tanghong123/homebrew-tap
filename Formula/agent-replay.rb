class AgentReplay < Formula
  desc "Interactive, read-only viewer for Claude Code session transcripts"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.481.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.481.0/agent-replay-aarch64-apple-darwin.tar.gz"
      sha256 "f233b87df77ddba105b01aeead19f34b496b0e403bafd4ff8ee311d2d50e08fd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.481.0/agent-replay-x86_64-apple-darwin.tar.gz"
      sha256 "a2a5c90791b91b9db5b2dd93adc45462eeb556ac38d4094d2891b73cb273564e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.481.0/agent-replay-aarch64-unknown-linux-musl.tar.gz"
      sha256 "09752c4371a0ee95c62d92c4bc82a06cbedb1c67d76fbade60121c68a57f1123"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.481.0/agent-replay-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d3302c319979d42f8f56e9cc5edb36270be592e83799662ba2364d4e0905b584"
    end
  end

  def install
    bin.install "agent-replay"
  end

  test do
    assert_match "agent-replay #{version}", shell_output("#{bin}/agent-replay --version")
  end
end
