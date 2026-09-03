class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.151.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.151.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "fb2049d74b3db339c94dabc057b72fd5d72b4daa3f033317d8ee2d09dca0d751"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.151.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5e80f1658ffb13b682b7ea03d125d4f321fa80ab0d16af9c44cef0c9fa60d7e3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.151.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b72bcae9cdac4ded80a12822d0b0295a4c2026ffb01fbc682143a454ee2078b4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.151.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "27a8e5fc4a6b565ff18b518cc2eec8c0cba7c839b0446c29d13e9828557bea0b"
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
