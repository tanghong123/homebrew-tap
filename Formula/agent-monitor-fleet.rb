class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.568.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.568.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "d36a982e3fdb092c7b55e84dc8db1f197d7aed21e75e68cdd8df48609b337459"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.568.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "54d728c1def2fb34fab2faad5678d974c7c472e79eedd75f6e701a6130bfe936"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.568.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5da22cebd25346d888aba7f4095f432f35b14e0b7a2968906e69d070e837c5cd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.568.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "138be7b3464f893d2f3fde65d722d52327ad5fc17e43d68daccbab0968a4e834"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
