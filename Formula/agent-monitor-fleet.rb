class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.175.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.175.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "ee5fbf6c727907688e7d129ffac6a23436527d3cb980025d0ee050ab5e543e34"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.175.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "e4388c09d040712aa908202e49648375ef2e1494ea505e39c42983fd2379f259"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.175.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e80d3011ae308312dfc6d43739bc878c40f2f34720a96f9c107a09737a31d8f4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.175.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5729382346f652af75483c543b3e39472d19fa89ba0f46526303c8a9dacfd8d4"
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
