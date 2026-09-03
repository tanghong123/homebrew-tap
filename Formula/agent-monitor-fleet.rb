class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.146.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.146.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c0bd4fc80d249fc0ce8d5883e663c2cf98d02a123ca2b0d28f98818628f3737e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.146.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "7b30b204e719fa32173a815bf5ba2e18fd798f1d4b8e3909c0a7ba114e1bbe89"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.146.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2022098d3467f754b601d48c7f15e6cafd09f33ac6999655d069168d77e9d0d0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.146.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "df24ed122991511ac0de435c6f621f2489fac156210c2cd6ed8a739ed723ae3f"
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
