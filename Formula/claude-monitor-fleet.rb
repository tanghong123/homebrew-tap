class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.92.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.2/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "f56de45bfad83a7eeb67bedb8359bc7185d860fc9a2c689fd4706e0685554440"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.2/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "be8406ced66449caf30d86bcf97bd5f5a094a7ef06c9a85067c960a4dff4d324"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.2/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2f1171b1185022adaaec7924b8251c1c1f898eae82927b7eeaf620664f6db9c5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.92.2/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "256799612bdd64c87946e5babaa43dacee02ab33735061c8e2ef25325fae37e1"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
