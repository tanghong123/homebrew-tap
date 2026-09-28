class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.322.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.322.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "aa82c85158c40800910af7db40e8f4a801cdf50587aeb381d8982cb56201f404"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.322.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "07010d1f3c0ffc3a53fca9b1895fa2fdea1b821920c4223b857adc90a187c468"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.322.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5bd44894e9364102abd3343737d7b70ef57ad680f0b378569924c7706fab04b9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.322.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c23689c4edfd085f8edf1458909c24fd164e65c06ae58bea435ee86813cec08f"
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
