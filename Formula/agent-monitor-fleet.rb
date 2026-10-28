class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.437.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.437.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "71d9636727d10c61628a42077239dd3ca75777fc4387fa5c4af63484b11b6499"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.437.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "80e7335a172607c9a0a949ddc9913f070e8dfa52ebca728db356714c4b0bef7b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.437.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a5d4a9d1347b995738eebc81f265223f38a678c483f99a5aa89ec107ee67e56a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.437.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "18cb1e34cfc98b0c24fa06dd08a955727769e146694ba1091208b97328894782"
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
