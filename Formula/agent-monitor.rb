class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.533.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.533.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "16bfb39402d5edd453ac7d16fa56474d8ca84581e62fff992a17c34df8a9c754"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.533.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e8d5c539beeb447f98d1cc7047628c545bf23eaf390b591c4a9313354ac0b444"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.533.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6db9702e4f1b4e85903dea6611ea38b1a7045e14f0ff28507f572d20fb26e4a9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.533.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0c77f2b6d253e5dba12fae48bec68ff98cd13dd9520b537237d32c30a93c78b6"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
