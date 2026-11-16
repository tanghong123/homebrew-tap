class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.527.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.527.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "68c9bf5711376687bf48a3477c46e1d1cd105e3302ddb1e54e514446cc1f6b27"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.527.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "c55bbe0eaa52ba925e976b7181266f577c0e4a601cad64044449b9a7b965e118"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.527.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c8841840356aad87c2ce5f3cdcc589b70f2c7d137fb620dabe8e316cd2119725"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.527.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "67e22d6d8f61e67a1e546e7d80a8a93574b946e9592180ad4400739b4bc6a706"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
