class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.252.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.252.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b5c6d33cfd00bd3771c99fec0b98593b74539f7678373b09c1d7066fc5439c70"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.252.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "72786887a75cf1b9e277d9e04514bf17c2fe15675db25d4aacb6db38c3a4a93f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.252.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6aca3a27591a372283337eebe2186de23d13f14a48b5bab4b9f815d669cd6365"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.252.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f91c480609d2e1162b96471bd279a21ce9fcd10c66225a441de2c5228e946cee"
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
