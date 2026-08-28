class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.111.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.1/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "91b0b7f036b649abbb64f8a30e18603e3b9f7c253dc34f2cf5db3077123ffc45"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.1/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "e9ba59937de9e1b2427a50bc7a4552cf3958485f1905da32747a28b459fbd202"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.1/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "873473f868baf3a11854adc95d7cb167aa91f96520193874b41afda4538a7b1e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.1/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b4df62d07782ca4702637e2dae0dc90faf7e34f368e598dbddbae958a357cf83"
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
