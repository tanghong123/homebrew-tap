class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.309.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.309.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "682acb0f03ace3fa39113b5965e428209ffce32a614e1cadeed02ae738b10f8b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.309.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "2318a25f59a3ab82c1b6290a3d2ac305e8e75746fa8fec362eb8ad7255e352b4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.309.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a6bb21a67611e10e6cecb6e959ccf00624fe9e9b46dda259315450d0607726aa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.309.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "88d157fd4e99a1965d72039972d931d92ef68a7a89a24a9c825dedec09d4ccac"
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
