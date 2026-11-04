class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.467.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.467.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "a6794c2f9a4435d2f8aee837e289093b0ebd8048ce6e262d13f43b405249c691"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.467.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "287f882fda92d75229976df9e9a6ed47cfa1ceefb7ac3a07e9c52262180055b1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.467.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cd50a48cdb7e8e172b2e8abeec0ecdc570a0aa29c5be848fa234de379cab5b64"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.467.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "01e45f956a7a4f120a556661a7a6ddd8d29ef2e6889181399fd39905b9818fb2"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
