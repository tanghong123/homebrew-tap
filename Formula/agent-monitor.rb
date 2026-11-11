class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.509.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.509.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "c905caff3c01ef76b0dbdd41c1a3f0db1aa866e967dcc9452377442912fc6abc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.509.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "6ff77834a72c15e02a16dcdf4ca779900369614c877b87a8d8a089bf1270f1ea"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.509.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "654554cd075a12fd45024ceca0732cc80a657274c1fa6bf8337070db0e285156"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.509.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "14f499ad0713caff8c93a3368c0ea90ab822ddd228037fad5009f57614c025cb"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
