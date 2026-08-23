class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.102.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.2/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "ec735173ad3927e3a963aaba2b094ad5f2174f4ea27f850cac5bf178ce926bd5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.2/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "1634f19f1ffba00e7c976b02cebd9d1b734b60ad6c8be4010a5ee6f08c165874"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.2/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4fc4a23ab8cc2fa586b88cbbe212154c944ca9b7371de970321f58a14703010b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.102.2/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e3afabf72f0e54900050afb9bd311940e0d5c53fe7a9ea6fd93605a885fd0970"
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
