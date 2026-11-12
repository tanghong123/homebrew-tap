class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.512.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.512.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "8286219c40ef4cf0b955dfc30b71ba722a1b3f06cd8a1a2dd09f94a0857c3a15"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.512.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "e162886897254950e2e7287bc3a611a61fa187574ab82aa5f44f92792913e3ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.512.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "84365b46677f79410f837b7d75f05b3a70394533d2f86cff0c756d7afbde3d23"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.512.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9a6a0ab972e41df3b33a68c7af8aa3fe4fe4b45a41cb097977ca4091e01c3d43"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
