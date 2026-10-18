class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.389.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.389.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "aed59eaa77e084d0df2f3ca725ef7e8deb32dd4ba4d5a8ce4966b4b02dc25076"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.389.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "6d04f9d7081987206918bc88a46ad201317b4a60002a4322524f34c4ee46c8f8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.389.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "43d36fd784d65a0908648195346160ed248df6f45d8e0aed2b7ff4ca966dd24b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.389.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ab2d0ed1dbd85435100d6f00464e4eeb4c512ab64c697c1653a5492b393de2bd"
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
