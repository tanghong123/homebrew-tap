class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.351.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.351.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "39213cca04d5f7cb03f7c15460676d9d6f8228d3c6b1913c35c6ce3bab5d8663"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.351.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "edc398e644203d4fb606591f268d087236c3a4a2e0a20ea6a5a8295bc1dbcf49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.351.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "afea6f7f2fd386ccf6b8bbbeac8d104cabbff072799ea0562617524e7526ceb8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.351.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5e01cab4bcfbb04c5f7e2e9cea2cace446ec7351eb7d8d5c914840ecea21f744"
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
