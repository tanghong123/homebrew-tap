class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.220.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.220.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "fe296fdef980041c701f9c8e3703c296d969e5a90a820496fbe17d441b659260"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.220.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "1470d795a6faa20ffbc74c82e8a0eaad40f14ea636a011575770d93e5a398486"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.220.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d4defc1aacdd8f68fcad733a437913b7da497180bdc3f93b6ac81eefa07b9ade"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.220.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "77700cefec8ac5ed2917cb58cada278a00f0eaa4a5d27824df6c0412b26ccb3d"
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
