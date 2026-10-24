class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.416.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.416.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "7ce5b98bc940bf63b95510e46a6308368cac4cb440c90d1641d58d823a1c0b5a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.416.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "7fa8a819ab8583c549b32953a4a602216387e9386e841090c3ecb4b5002aba38"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.416.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1ce618afb419dbd7315897bff6a3cf62cf0defb6a621b71eb9e91b8477f47c4c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.416.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bf4c7ad287598b7c47c87f27b5dea36f6c28993c71fde9dbe8647dc4c1cd0514"
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
