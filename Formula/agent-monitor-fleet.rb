class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.540.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.540.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "28e0db6b76c680d0a499cb604a5af1c3299b0d9e7981f208e7f20b242175f70e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.540.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5e3d8b632c6338feebc8044591fc2e172b1e0402efd09c49cc96bfb6996a2552"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.540.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b3704b2f2b36c8c122133646c7228a30e9625da2a4a332ebb44db662472b9ab4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.540.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f5bd4111baee55a34be69d11eff28549faf6ab133fdb6f527e9df63e2f0546a7"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
