class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.106.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.2/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "2a336279e2c2cc553ab29fa1867f6563d3b7d1068d21524a9875c10850d31cbf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.2/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "b4a8e8f8004e03b45920eca76263cca03892ed81dd70ea68f5659ce461728616"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.2/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "99d3be67f72d86f0ab92e161a62832bdc5e190eee2d4ee2e0708b5bb8d28bbde"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.2/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e9e97f94ffa6bcc6ee1c410dcbdb62ae586d896ae62277c71d9576a38b3e76a7"
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
