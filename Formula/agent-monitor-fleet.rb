class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.243.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.243.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "883584d217391c3c3ce5a1d50939ee0541352419f7b9a853589fa34d120d6185"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.243.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "74bd9943b264a9778dd2657eba81536a5a756d0513553104c20a35d38550333e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.243.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b33d64d3c778041673375e7b7c53bb60f5ddb34f8128aab01e7147c5d39c3f75"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.243.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "351a2e535e1eb00d15ebb95d1590e0ca89ecfbba96197c7abce74497867528e9"
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
