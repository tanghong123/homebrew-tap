class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.420.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.420.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "ca143a5d28d45284aa2fe02515a3afa53114a8d1d85303200e8e8e9ac55cdf71"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.420.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "4d888f479d147d4575ee485e8e09ae522d607b264aafd2e86456b65b147e78af"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.420.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "03a9579debf1795d0fd8f0d841cfab94368eb9616875ae5dd786ed9cb84fd25f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.420.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "15e773fdfa91d64bce32de9cf3746276033780577bb8fe175b2f846966274b19"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
    bin.install_symlink bin/"agent-monitor-fleet" => "claude-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
