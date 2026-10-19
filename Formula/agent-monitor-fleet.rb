class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.395.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.395.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "0b45e9c2dd7963c3e31d2db8b391de43c25104c38d4ed0d96874205cf4db8bac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.395.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "3452ea7258d6f8fe4745fd0583000806768e5a3179c9e41ff88d02dedd98496c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.395.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "59defc445ab40f9c718ba07ee804f80c26c160b83ceffda0bbf334a7a8faf82e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.395.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "76c099f3837e66de3f4243a02bfa2cbbf2a4bc9d822ca34b780409a3a7fdc9bd"
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
