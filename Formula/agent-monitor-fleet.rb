class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.119.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.119.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "ddd91f5cc8a5e419a01b6a30e7c6823f86f4c2b3e4854e9d6a4a15a1fe02c868"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.119.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "40df8e6e736a226d39aa4e76692a76ddcb3eb1eee566894c02897a315a4ecdb3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.119.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bc5199f96b3741b5ef98eceb9ee497f95cb69c7da0c4656856e97bf889aad188"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.119.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2d70c09c5cf309b960c6ed39db73f6bf1205eeec75b409876c657c4bf9d920a5"
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
