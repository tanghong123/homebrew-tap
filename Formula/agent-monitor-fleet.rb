class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.304.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.304.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "71bd836e1ecbade706d944151e71608c83085731446ee295e6532e17bcdf5c32"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.304.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "385e3f3febfd9a554b5a91b934aa6f6a59b6014592e6f4c809950f232b0d9169"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.304.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d6a2c5bd2d244f9404c64af49a9edf9d5469b9c622be3fcdc5ab01fa81febb1c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.304.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d31f7a6be4a779165085402fe7c235bba824c47360f858194f3a23727fea5c4e"
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
