class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.470.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.470.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "18597378f06f9e601a946ce2af00cb85ed81daff2c06b87c9526900267825e05"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.470.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "5520109d5feffcd1d0baab1d3a71158dff8cd6b0d47267a21a48bc8e523138bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.470.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9c349e57cc7af490b441bae2ebea2a39d118ba2c5be4f367db472db7e7afa6b8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.470.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "44d6ac3898453aefbe9388c8629ccc2f75188d9ef0f202df94a19b48bfdc25d2"
    end
  end

  def install
    bin.install "agent-monitor-fleet"
  end

  test do
    assert_match "agent-monitor-fleet #{version}", shell_output("#{bin}/agent-monitor-fleet --version")
  end
end
