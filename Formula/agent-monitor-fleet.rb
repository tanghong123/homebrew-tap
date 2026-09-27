class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.320.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.320.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "5024592f39a5cc56cb8fdd4fd3d506546cf2dd2a64a3ece6c22de2d3beb2432b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.320.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "c39f7ef6030d4975acf4f4cbde0cda8b7da61a7150bf87016d3ed495d04b9371"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.320.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7e6e58d48c094015451a179a952b1b3425579f723e314fafcc2b9b25a5beed28"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.320.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "47e6c643ed7a097aa695cd198a0a2867f73033367b3a4d8ab2931f8867daa58f"
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
