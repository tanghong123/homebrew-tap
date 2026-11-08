class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.496.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.496.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "5127fae36eae8474ddcdf1d56c0ab5ff61614b7391287efa118a278e4688dd82"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.496.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "0c18f62b77c1029dea0f1ce1d4fe460759569d78bafbb0c0cb8625dbec112ef1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.496.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7d793135ac7940b3e3da7d40bdd2eaefddb2caf3601d1b093c1ba66be1fd256c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.496.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "48331d9d375bcee4372fefdb1dd45faea6682017deb178a803a1707457e29349"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
