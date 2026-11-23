class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.558.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.558.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f9b148cbcb5c7b429828f13a3aea09c6f605721b1ae3b0e8acf9039e36474e2a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.558.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "eda3c11e6e73ffccf6812221da099a5ed96c55a55a4318eaa977bc960ab1b2bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.558.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "959f255d8657aeb39445eeedadaa8600dee938a0c2a894083b397340c946a2c7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.558.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "aaa024b7cf9bcbd85cf821784dbd5ea4310a7214302a50ef6dfd3991f6e72b47"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
