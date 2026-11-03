class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.464.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.464.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "d81a70c476cf768cdd5cbb0b3ff4ac1cf454c74ffdae6f47fee31ecc9937a04b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.464.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "220081bd803d19681924fe4f920ab5429ae7191ff3e8d7f73f169b47e7ba2763"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.464.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ef8887fd337089aaa9d4814169623810bdfcb3da9592503c87d24d68a6302a54"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.464.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5892439efa92f3eb669e37950b24cc6de5fc3f358372bb14bfa47effe5a8640f"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
