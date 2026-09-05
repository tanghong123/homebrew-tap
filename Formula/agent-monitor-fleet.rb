class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.199.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.199.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "3dde5e50dd064755dfc42ecd9ded81d5f41c5943fabb2402d0569b63a7c8839c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.199.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "9ce1a93c9093da444a518fbc9df06fd50f0c5306aa0bd506be044e4a68426464"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.199.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "889ca439a4e2eb99f3abcb60cccd9f907a4a94e21af3f4b98ccdcb9e419154f8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.199.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "28eda1e634b62df5d2afdd8a9a18d87e7c422f473484d11b3c975fda130bff36"
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
