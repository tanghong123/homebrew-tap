class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.258.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.258.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "bea7325fdb608ae03f31a5301a708f94acef1bfa146114f0541dd1e0f3cca88f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.258.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "07c0562905163d34378c4c8fa27f3bea8867bb86cb281fb79e680324eff8ed04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.258.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e8c3af9adad2232448c031b3d235f12454b028845fa8578f0caeaaef39da4f87"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.258.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cd2eb0b95076bf719d9af24fefb7daabf7691c6c9206384a829f3cde044d93fb"
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
