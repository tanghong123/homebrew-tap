class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.310.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.310.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "da01c564cee1bae71240aa3a7b2643cbbacf2bd7206a9cc9d1654d42380dec9d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.310.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "c7401d0e4ad89e397fab81ed7845cb1c1fa5903a731216d98a7f54339d3c9315"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.310.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a88ad898908d8321d46cdac2ed92571f17b38a4aee272cee04a6849b8d10f2a9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.310.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "69fb42c67180dba4e0a7751450f41a3b6088f31f0c2bfe496a10658b4b5361c0"
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
