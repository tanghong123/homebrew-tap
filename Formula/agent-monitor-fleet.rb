class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.296.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.296.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "121fc7922c4db6394701778e211dd129619e6dfed7b9a9ce1682eeee06828e3a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.296.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "45392932a6a48d9739251f142b56154ba9faf2079704590b2a7529a8c4295221"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.296.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "00b275593d7fc1dcbc30b49bf17fafe8d7ead94d743a694f3575c825c3dbbb74"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.296.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "879c04bb823e92b8a3e404ccce769ec6ee545b5b00147bfeb244e6123313d4c2"
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
