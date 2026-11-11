class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.511.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.511.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "abc4b2365689398aaabce381280b39993b73cb876a106365fc48f42cbc9676f5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.511.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "e6913233031430e40f4481c7a0b4b84338d55b6cd13389be90e9946abe08a9e6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.511.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "179367aaecfae054cbd2c19bdad78162e9ccddea345b0ca150df3147d4f68cb3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.511.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "dab6ef48fd44055fa84f428decdb238a402de7856735d744089f817efea2f715"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
