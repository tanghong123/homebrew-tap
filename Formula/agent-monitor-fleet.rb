class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.546.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.546.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "2de95c04d5a1c530bc695692b654cc4ec58e1517aafd30e20b33bbc1506855b4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.546.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "b4b46462303a78e865f28d9be7c82aee45845ff9c8d81b48c33eb72d1b36adf5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.546.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "57c0cf339f38d7d3050f38501a199d060e469cd3dcb4f03df73f5efd39565428"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.546.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "86b9ad9b29df80114f2589805313edebbb2ac52ea0990cfd392ea4153b498002"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
