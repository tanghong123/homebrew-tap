class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.501.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.501.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "307d85a23f4cd26fc012f8ac2cf53b17b6812ae407c8d6d06b82dfe62bd75ba7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.501.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5ea6b9ae2e10a350955301a0850d18e88a1ee0784de181aef49db7478dc2e308"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.501.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "67d48cf98982fdc70bcd072bed91467ef17617d068cf5f504723b349e4290d88"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.501.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4683979e29e3c7176ef5d1d9375238bd729f890aa6d206ec18c2258692e3d46d"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
