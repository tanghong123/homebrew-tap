class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.337.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.337.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "0b77ae3c18e5f8dcd55870efa0dfbd7a5236f3ce6809aa313d1829d5f4c79bec"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.337.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "01775bac0b7025cab84d8af331151a95df5a74e62d1674a6d47bc6a65c3c6778"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.337.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a04d5544e5edf9e080b652e1f103efc3392195a69b3b4eb7ebab260ae828b295"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.337.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c86e50cbbf3ae28d400e8e02ddbcfc612ddd2d961f21cf0c8bbfc361046c4c4a"
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
