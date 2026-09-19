class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.282.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.282.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "cdc2e97c66e41702e13d9c1db8ba8b11b3ce4390b23712c8cc2ec34456af7268"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.282.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "7fd9e6bf74ec6a0eac099281ea2a5ad68b9033a7e135a8ddb6b3a97f430de102"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.282.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c22ea40b69e3c3baca507f3ac7b57c73a5421fbaa3ba7cac8dd8c825a8fde129"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.282.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8dc53f3bcad53f483af964353887d90ed961f62da419a26a416e2d409288a615"
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
