class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.216.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.216.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "670da66a77889533ed094c6ff95b5e3f77425b361ecac8e1847732fb64055d79"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.216.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "55fb0946d07656e2f7c5db3b238161c7cf7c6a3bcdbebb2a35e82518d2da3604"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.216.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8cd0d35a63f8bf6a4dee3b1ded12217f69a0ef52084e73383d4786f543b8bd66"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.216.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "450d84aca6cd2f3720922270f69cb43a61f8f3ba554910a12fa3099291b204ca"
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
