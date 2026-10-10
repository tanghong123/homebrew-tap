class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.370.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.370.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "1b6516f0cf836fcf9b2fcc2f080133e1e540c3e8e27aae744788d395bc0eb9f9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.370.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "b1e0fab13e8fa4bf1b05bfb750abc835b514c9d1522fbf865a5506d3f4b57c3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.370.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9304801a08adf03816b67cd4d8891c1eca6bcb1677549a6f6b2775767ee575c1"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.370.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9a82347b46c878ebf738238d56aa55da8a884486ddf8cd0896bc0f668bbe6904"
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
