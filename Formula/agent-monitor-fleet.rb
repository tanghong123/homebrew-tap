class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.457.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.457.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "640739be890e8ac8ab5e3b4fcf8396fee6c6f1f7023e4209368c94aed2baf5d0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.457.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "4c7d944545530f4b3057951fbbcdecf412e0cfe7a91c277325bda4a324b3e01d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.457.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "63781035bad73162f806f3b174fa71b6faa240a1f17f729b8af27358b0c3a601"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.457.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2bdead376216d76d20211f4a4bd0cde4a008ca63dd51e37095058a9c990e21d0"
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
