class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.222.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.222.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "1a005b154e4c4b2661e98054001425b66c0fcd9aecfad72fdd11ddef30ea9d9f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.222.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "133c8cd283cf6f52a978d76fdab454dad0f55e139f0b4f590457aac9e7433485"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.222.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "171234bb7da58a89de60afc4f41f4917a527738dd753bdcb7a65c14577f9a7bd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.222.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "892786120881e6c13bc2ad242122e90dd208e58ff2b028137938f711e522938e"
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
