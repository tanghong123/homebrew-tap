class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.563.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.563.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "478689d81c9ba16a2bbaef6f0540ebef9525febfa147ebe54e7c2d7ccdabf3f0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.563.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "91a07ed1dbf57844e77be81abeee95e17678d8cab08211eb51ce3f51eefcaa39"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.563.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "eff1d19e744abd894c249d839a45ac079f1262ec9d9ebb9ea7133990a7aefb11"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.563.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d3f622eca18d0e3c6cfd2d82ab867716e8d8650964d3b137d67489b71c1ae46d"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
