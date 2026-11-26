class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.572.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.572.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "7ffb7ae7fef453af29e1a56ee039ab54439d23220af5c2a099da13a588ac03dd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.572.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "eff0d5f25983887350c79d99ea059cb64fda546304ee4a29b5c63eaefb45ffe1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.572.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1d90567059cae5c62dff15f080d17312423f8f313c187db9cb47bb45711d578d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.572.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cf6dd683aab0a6f0cd8739f9a27bdbf1ddd334257cf74c1f51159e319cee2eb9"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
