class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.348.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.348.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "612597c904fdb4a071e2a46536e3c78309cf0bcd3743c4bb0b7fa4ef84458000"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.348.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "a74ececb2841c1d1d294af6d32d088e994631b44d50c6f662abc322c6cea96ff"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.348.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3ce929adbbdca648271e02761b39b464ceb131cac9b6f9384520b7d3572b882d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.348.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "46f61f52c54b70d08f51c3379a9b4e45bf33880187b574bf6042f3d589b92b8c"
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
