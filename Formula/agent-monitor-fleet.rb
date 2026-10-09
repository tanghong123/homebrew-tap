class AgentMonitorFleet < Formula
  desc "Several machines' agent-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.364.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.364.0/agent-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "07875e23ec06f8bccf0261f21edbf7bdebcdc171aac801ab1321a0a650513d3b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.364.0/agent-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "4921988d22d3f22c2bc1d650b4d0220d5e26c145dc176d0b0e0278875f8ca163"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.364.0/agent-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "831c41c382837fb0a16808e9cdd60f6f156db1eb48e488da146e1498f58f4666"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.364.0/agent-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a11849824f473527f2dabba0000519ab1d3f4794da2e4344b1e3239b165bf652"
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
