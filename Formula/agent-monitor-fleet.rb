class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.341.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.341.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "308cfe9b6a15d81498c7b40ec18a2c97b48c246a4c5df3c201bd39275ec8f3e8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.341.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "c48ccf0b287f176220fc6812d8a901d031481e5f7644c3f9fe69d4b26b9ceec0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.341.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "217030c05d1cf0ab99fb5b7eb4958e3db594fc8d6ae37649a5e63cede360082f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.341.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dccf741d4fd858b50083e35000073266780642057f8ba6aca4262b70c0e45b4a"
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
