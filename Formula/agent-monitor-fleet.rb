class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.301.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.301.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "e1c94b4d0ad22b4dda6873d7405b51a39d65f7b1658da4b4d182dfd4a9f707c1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.301.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "3ef1f20f7ac334dde9fe697e35957b30cfe9b94da25ba4a9c4cd824f36db0de5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.301.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "18560f5faad576ddcb93958f493f5d19c779eb037dd1f38d44338c3d92bd7d59"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.301.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7ed65a0194f83c4d289391a3a9edaad2f6d0acca53d31f98d91d2d178a2686ee"
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
