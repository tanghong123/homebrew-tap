class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.183.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.183.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "011513a7c7ba631866b6921c941e6d1d22408066e8d87b8d7f91c2cabde92327"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.183.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "83c368df7c1e997c511f768dbce578c0c1ec90063a3d8dd3ce9fbe62ac244061"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.183.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5950bf8a229f0fa094736c996af7eb65ac0e57c8b9f8d288607cde8c4ff170e8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.183.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "34ab86503947e45f580f353e457a9527812dccddeb189cb87adcf190c59c39bc"
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
