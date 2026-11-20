class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.543.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.543.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "c622acbc5ef35df1d9dec25c9f1b7f76df7b680640675f40ecf889e9dd5ddce9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.543.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "93f4a7176185eb1a9daa34d4f632b589d91b558dc5a86cddacae3d56098924ba"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.543.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "10b49d05220daabb1dd9014d3934b6ad55929e5098c636fa845f2eae563de88f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.543.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f48179fcb30a52765ba7a4b5cc82413009c1ddd208841d8eb46b1a7b630db23e"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
