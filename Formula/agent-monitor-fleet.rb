class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.109.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.109.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "2b55b7ace55c2703bcef8a2977d1e0ff4160729e03475a24f734f59dfacb25c3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.109.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "50eefa575a7321d3626b105aa9174d828e754922c958ba4e73f3b2b8783f37be"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.109.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d37f2a666d3b4acf1ce8134857cd64323e98b6a2c2f95d2e4e2b1faffc0ad905"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.109.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "22b9680ce07047ab3d505eb5791776f6f46b01176eeb33bcc0b99e50ce6b1c79"
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
