class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.292.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.292.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "bae3bef2a6174ae9454f8afb1a2f5e6f92826b7fb7bc78fa38f496729075ba6f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.292.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "939aabb5db69ef5ae7e3e17da713374c39d3e89bce982dc5b949efb1a2e5678b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.292.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ee5414495233caa828622bf1b53d0b4b14bb0e4c470e52883c1cf06a5df95ab4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.292.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "70ba6dd469f5a0b155f1a1da075c7b427d62eb1f9e57a4685a3fcd1077823ef1"
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
