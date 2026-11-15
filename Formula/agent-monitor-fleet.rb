class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.522.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.522.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "75fccf430c1500bc3f6000e728c03775dd36caea1ade02e14af06659e87aa63e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.522.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d72b7e612ae62884dcb4da4264e1efed3b3cac60990904938861ba7a5431af2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.522.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "dceb327481926af8485823eb113a5ac56f15ec96bef2a771f39a445b7810f756"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.522.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f1f4221b14254a4dfdf6527b63e8d10d6c7a661ef167162592254775ca5698a7"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
