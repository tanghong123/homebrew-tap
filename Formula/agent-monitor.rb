class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.478.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.478.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a28f218d6be442b620f973a6823011c82e6bd83cc51cc615e798d02684d2737c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.478.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "2f0a68b48fe02368cc5df63f590c0e92ea82f7d8cf8cbac3b2a85670022de1bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.478.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ce9daf33c5f0512c2d257b4431d50edaa26140fe8dca7e6cebd09d9f0bbc053a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.478.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "037bd03ff27cd2d1ebcbe6d9586067274eb3acde89ab47737dd42d4c374893a7"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
