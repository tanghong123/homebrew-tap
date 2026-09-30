class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.334.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.334.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "410e7d53f8935a67b121c04c8c37c22fcce1026440682da31d69cb73e35eee71"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.334.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "d77c3fc10dc4b21ad55a353b63feb0e2c20bd2811b8b2a5e5218937519e87a53"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.334.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7e7efaa3351c216dde23083c04ed25fcc2530e46c5315439fdbbfc92b7ed6485"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.334.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "7b3d738ddc7e52b823bbea84c360fc2d4ba8c569066756c1bdbd7f036a324bfd"
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
