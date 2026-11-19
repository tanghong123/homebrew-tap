class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.541.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.541.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f104b26e69f6601108e4465e2bea23d30a0f7d440511b8da3e40b09446fa97fc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.541.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "672360bf0298ab1dc927f4976b6a598518dbd2d2804693840b5de08f5cfefed0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.541.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1efebe17ada756db965b0fcf26cb858193f7ff5bbd8317d93af06924ec8685e9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.541.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d57f0b1be02c9e62dd4429e7c2e965431c6d59dd9f09f110d0c67da52291a4f6"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
