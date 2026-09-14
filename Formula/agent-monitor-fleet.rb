class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.270.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.270.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "e9875c42818e48e5f0ecef2f5818768ebdafe662f963f2d5e62a7e58f4fed82b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.270.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "650341356d4a199f134f3fb2e1c78e8d8934b5d64a39154ee1c3b1c9a75e8fdf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.270.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d611d082314f3385894d0c1e3b3aad8334896941dda4ebce8b059ca1559526c3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.270.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3c9a8b0043b777042d3b01c39c793a748e9c72b9c6214e7e85e37b6bfe74cd00"
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
