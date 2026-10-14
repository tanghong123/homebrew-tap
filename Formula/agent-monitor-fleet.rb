class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.377.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.377.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b217dfbf55319993c11c8f7885eb429b84309c970ebfc964c6a4134a3394e1a4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.377.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "3018f62ce4b08194f77c756531c7e4047353143da9fd2b0b467f278879e9d407"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.377.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "07608b5f95b04700719d6d24858e5a9584160b687b575d559a345f7eb4133232"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.377.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fb6ffc88990bf07ec973239f13752657719ee0c4a9d87311abdb097b90c1c4f4"
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
