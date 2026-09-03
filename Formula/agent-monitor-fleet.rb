class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.143.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.143.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "4007ac90fd8a3be1045b962c2bed998c459c9ee5f62dfc97fc486242907c449a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.143.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "6ffde2c7e770997ee6d4b985c0ddded40f3167eb4c4ddecb8ece7268ca311044"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.143.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8e8393a958b2e2479f199567f6c69a12bf5855c1a517f8d31db82879e0d7bdae"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.143.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e152194d3e60dbf1fd2e4efaa25ab8d4f6923b71a1992ab18debc900271141cd"
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
