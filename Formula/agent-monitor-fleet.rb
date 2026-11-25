class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.567.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.567.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "051d34fe8aa373f518b22c5ff967b29393789ee405faa2f3fcde3368c80c64ed"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.567.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "7e006cd18556b2be57dc109045c3d574c0da02886ce78ed2ce8efe8bc0280f77"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.567.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e22d4e737e0616fc9c14d94c24872be5802f3e8b97a54ab422cb3170984b74f3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.567.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f9a376e8912f9148cfc2164682fdefec7ede916ec6b8384365e40b7fe05a0814"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
