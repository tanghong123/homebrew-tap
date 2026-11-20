class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.545.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.545.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "6261fb6e85457ad341684f4802d3cd4975c70a5ee897e4169ccbfd4cf9ff0565"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.545.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "2ac60483b13450978e082dde6a30ab91e0316e547fedd651c73b606157991493"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.545.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a5386da78344b433911877e2b7779118426f3d72bec5ed8b4b855fc583de6c71"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.545.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fc804115b58d9883127d9a90cde8efa79d6077456b88cc6ce6d3e83500f0727f"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
