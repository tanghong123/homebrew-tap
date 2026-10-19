class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.392.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.392.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "8353f23a037150ed965035fe4c25c63abe512f3b4560c23211e2ccc087c5822e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.392.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "7ad619e08a22ec460c3a0503cd713fc01545aca4c98b62f033dd980c924b5b7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.392.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d54826fae15a8614d21055afe56296cd18db1068a7f9236a0e49e265131d96ac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.392.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d208aa446cc1807bbe364d5f121b31379e035c78cdf14b5a7a96805a7d6d240d"
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
