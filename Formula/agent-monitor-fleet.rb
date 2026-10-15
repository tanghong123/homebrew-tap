class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.379.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.379.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "bf478d98c4893f6907f64e14ee3b385aa0052a1b703c5129a3c3eb41f54cf2f1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.379.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "c3b3bf5a230781cc37e436afd75cc4f9177c049210f5dbd21a028a441ccc9686"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.379.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "183ed34fb7ecee4a7138d6ed974c53461e9e018f4e1647755c12b218b278476d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.379.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "85f158f518e94772266dd523edecd81f392046b5037ea96c7a702d7754ece69a"
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
