class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.147.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.147.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "ee231b7ef3fdb3b476f4e8d632cc2e6020e27e1da012aa06fd934ca9c7db0b5f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.147.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "fd6c650371cf2045e8512e12eddb3041df1eac55cafa0c15120549a3648e34c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.147.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f26643fa98972ed93dcbaf1d1ef1cd5aa3d9b4192bfeef571b1dfcd2a19aeae4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.147.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0445bb95a1fe4ea5a9ad6360734dea1b46809acd8d0ae0c53677342c2c714bdc"
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
