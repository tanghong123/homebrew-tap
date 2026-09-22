class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.293.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.293.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "b355c588d0fb5eb1a3d6d57ad6cc5cf175383766d21cff5b50adb95459d92791"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.293.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "a73a44f841d96658a9cbfa42098076083db25eadf92aa711460f5ebaf4bc8617"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.293.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ed677a0e8f60a3e5fe38303ef8ca79be17be851abd71fb5c9c5a5a03f573fe5e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.293.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9b533373b0599f126c7cd1ec3dd4adce0a2f62be13eb073794cf261881de8b4f"
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
