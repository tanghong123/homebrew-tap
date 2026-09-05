class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.199.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.199.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "05002a11e6af47d76224a2ba8b68f833cb07f482e6b111e4a5c93f8806886ade"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.199.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "25aa23111292c1c1ea9e372294ed3da92c629411f0a5dfb55a41e688d5e2876c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.199.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8ecf31a965b08d54aba99c66d041b92c12a251c34bbe6c23e8954d3f89706efa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.199.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5f68448e4a8fe18eeb13bb680c02e30a14f73e6a66028912783655703c6581dc"
    end
  end

  def install
    bin.install "agent-monitor"
    bin.install_symlink bin/"agent-monitor" => "claude-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
