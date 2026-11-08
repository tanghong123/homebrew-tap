class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.496.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.496.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d9ff4e95d4737cae122bb131afae447bf454e46749a69cc8cbaa5df4b839cdc9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.496.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "8661127f45b9da431f942231bb70197ee941fd6d9bfb7001c40b9e002a5cd7ae"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.496.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "26ac8a401794e0e6d696447575c70e5768052fe8235dc90916fddea1945e71fa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.496.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f7d6f1542b85dd630effcfdf3a7d767cd7e56a5f1f3bd7c415acdf5fda3eb646"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
