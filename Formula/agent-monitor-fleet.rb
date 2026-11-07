class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.485.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.485.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "4412555253ff75ef08ffb7ae34a32365c1d62f4f87268001b33cb473ebc42045"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.485.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5d9676ebaf788d3e4d4c76b8f74f76f058c66ebb06393940a0ed2f36bab77f09"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.485.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ea61a9765b1419af868f8a033c1f7e4c02e1e95660bd120f4f4bd80cf0949ca5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.485.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "28c3501ba8047c2ec6d9abf278b98df933bb47efdb8bbafc15941837235fa093"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
