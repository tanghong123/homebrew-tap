class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.473.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.473.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "89f8575e0c637919e8452bfc0133163425f645c383e4da28c46c0041da53e62f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.473.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d0087f57784d69b5ff4a652b56745e45a33d08ee26139adb2a4ac54c0ba667b8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.473.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4e1c6ab3588d976f1e30324b720f182e0746fe827cfab4cf6e46f35aab544f8a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.473.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f268b5fa0311f68a550bc415017c5e6829785550253bb1d5ca11d68a388fb1d4"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
