class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.350.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.350.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "e945ec5ad28680d51f85708ed342c41efc25b651f9cb7606f51e21dff5baddd0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.350.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "a500b1f132ff9e0c39b89927042682257d5cf5b45ceeb47d41b1799cf2594c48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.350.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b27c1c1616c7beeec1653b86a2484734be23baf6bbc8a3672f3a607404fd8ffe"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.350.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "90b4ae69126263a3b139c65c3c6f02411fb5394712a529c6293e36a407a25449"
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
