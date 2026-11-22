class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.549.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.549.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "374212d60b9d77c60cff6a779484972f3663655444d030bd308a44d7b80fb33e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.549.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "f20e2bee542244bd92dc4508df10e3f6c028103d80245b4ba456013fada3e0cf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.549.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "93698113dd53c4199e93dca26b47da549b5be89887a7fb5c53df408cacec5ae6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.549.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dd30c617529041ac0b8c57adae97f9844b758918f7e44d08cc6c1be9269cb9e7"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
