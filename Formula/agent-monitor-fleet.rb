class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.251.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.251.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "521eafda883ce3243eebe5c986bb90067a4d768ec77678a70a070c43eee1f257"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.251.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "ff6bc93c1553568be399308291d71e144202a72d7d837c412a696c47b6f3a50f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.251.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b0576f4e7d998c7074776c540bc04d0bb8261a6b52c318a50174d109f4953497"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.251.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f43d96514273dc669e69ccc8f45f48b427d4bec1c89d256d20441668e0957909"
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
