class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.456.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.456.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "50a33def2161b3508275a112dcefa01b5161b620e6e84e3cda445470225a30d1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.456.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "2a74a53032b04b6f773b404f13e2623e660aeec9e9e684e6435197b0ed4448fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.456.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "659ab3d9d2117c2fbd1e3a8d21e83ad5c730157afc7755ce8812f550e62549ee"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.456.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "8d9468f6309486d1af4752f7ad69d3e75f7581aa1cf2aaf9dd7f9ee259e7e823"
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
