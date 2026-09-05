class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.200.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.200.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "522cf0471eb46493aaf3f8b5a34935354e58cd12c1cf824ff9f08179514aad53"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.200.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "92986e36b2b335a079cf008df3c1d7f6953c01e18d029690b3162274c940abeb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.200.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "24998f30d8352455cf2a15a8d86450a55b22d76901ca4f1d0b3cc0e6dcd46206"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.200.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "83d217afed6b66f84473e3849a8c514fa98555ed16deb6d2ec2f8feec33f8fc5"
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
