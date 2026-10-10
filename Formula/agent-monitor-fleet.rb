class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.368.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.368.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c6c91b2244302aec3975316bc941e349514b514c8da9901729e2d7da9b7c3999"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.368.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5a41e73b0c1a8a1962c0f1c0e923d488c096921736be7e0b201231b2850226ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.368.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "652556b8a79a533831225b777ecaeeeefbe6e153673a472d7691c3a0b96d18e8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.368.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "02998350371114ee88f1e3525bf3fb9fd9d04b562133f5d46087ccceed961064"
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
