class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.277.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.277.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "3216da4835a1cbd20abb8cf7455cea0659902e305f6dba9170a593d5e1eb7fe4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.277.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "c93ac8f47ecfb9f4a9ad09d30ed0bc217f45b57a68b2cb51336cb0153ec5c2f5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.277.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b5d0d10dfa316627e9ae56ff3b682921c91f2646026f19c984f273cd2bdab6c5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.277.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "50970097fbc84f00d35c0d5ab31d9b96998df59d7b9f6209bce52fea041f7f51"
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
