class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.112.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.112.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "05ada954b71dbd80245d5cbcd2b5a2bf4f7a9a5967c1ff6a8c08e534c9095e4a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.112.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "f5eda539dfc4991a1859265596ccb835af23bc63d5e5d7446ba38aae4b33cd7e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.112.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b6b7d08f5e137996fa5a57f4aa677cff21e90dd08fffa65195dc214d1df4c41e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.112.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1e99823e7e8773c4a57063389b817e50b17ea79763bfbadcca1e9ea9fa706a24"
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
