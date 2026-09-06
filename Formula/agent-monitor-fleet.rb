class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.210.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.210.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c467a7296588eba9b83d8f9e7ea43fa8fe186b96896cb21208429ac679b76d0f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.210.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "2918786427c15bc67673fdd957b062601fc526d561e40a824dde2c4e978122bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.210.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fc6f60702d691360b2f8558109ebc432df6c4db74d15237b102e8ec28b1b8309"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.210.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "780309aff608abbbbd209d9a7cfde94525e9991656479c38a5c35af3aa2096a5"
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
