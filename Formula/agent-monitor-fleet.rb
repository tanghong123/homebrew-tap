class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.188.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.188.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "ace34beb1bcdc7828b0238a0e44f59acfb12c9f6fab8a64960fd20dee4807d6e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.188.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "41c1fe38f6bea7a815769119a8f93cb1364d58a1dd92c1bfe80bcaa10f87cd28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.188.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "472893d83c8bb3dbb7bbd32fae05da69c0c2371fa113ce501eab3a6ddeddfb51"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.188.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3f5c49b0ce1855924c48e347921e82c38b53031b5f943bf93bb33c40775403e6"
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
