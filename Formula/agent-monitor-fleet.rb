class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.125.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.125.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "63bf459aefa0216a444c1ab0e9c434ce96114a62ef5d82b250b8a5711a12d138"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.125.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "8c2ff47fbb5e8d51afa6e43640c049eadb28e534898dc49b39d4f82baebef6fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.125.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "209b5a373be31519c1ddb086e0bd42fd2066403f9ec1a6550bc02ba6bc4b9589"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.125.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a3cf55297f38891bc0673737591efc73208e3862d499d1ff9723656489164313"
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
