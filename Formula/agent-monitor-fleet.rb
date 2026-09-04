class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.158.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.158.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "954151c7e6ac690b76b9d31271bd069cdbb97bfbe8b5fda62a31067921caa821"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.158.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "e6c0d92cdb9c75140704f781e1d7631e61d2d35f6eae4605028c152ffdbc248f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.158.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "edce2b60e1fbe4d9369a81479b4dacad7810566013017d2ceac6106e8cbb8fe6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.158.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9917f221f7825179bf6104fd6d409ee7d053c8101a8e744ca2e200db7ef1fa51"
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
