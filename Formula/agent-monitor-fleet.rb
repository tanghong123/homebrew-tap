class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.406.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.406.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "49147a66a9aef211fe662f4e93cb3b03a30652823377c03eaf562cd4791a04b9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.406.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "2b265c0f1682e6a4fd0b106f198981bb49928a2e32c59b6fe03d5c3e693404c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.406.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a0d51b90102e6bbf9415ca7d7eb322746e610d030efd057c0b588ba3faa9f9a0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.406.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2a513ef8c924aa47acde20e12de37f6a8f11045d3bd8736ee006cec94f554b04"
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
