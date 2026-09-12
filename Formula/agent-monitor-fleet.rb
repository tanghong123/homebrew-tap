class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.262.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.262.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "3d4493f574dc2a63745497b23e68d3ce49b483d7df7feca0c61ae4dd26261ff1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.262.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "a1a79c397e5ca5cebc6110d391170c9026281b4a32c82462ebc7e3805ba57c75"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.262.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f6f4bdac8fe1a7e876ef3c865cb081a74253219edf108e3e5d8240fc34267f14"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.262.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5e0dcef6a5a0519676f9035e843e86e41f1c580d0daeb77a9d2dc2dcb3927e4b"
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
