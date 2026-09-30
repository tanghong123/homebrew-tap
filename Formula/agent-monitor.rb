class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.332.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.332.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "e39aa9017580033aceec1a0e4c6bc7de17a5da5d5a828d0778a93adbb42d2e90"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.332.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "c64878ca28fe04d206c649d6f972dcb296cbf9d54d722af45fe8f64fd061db55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.332.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1fda2ee2c55ff41755252ee45d0ff4e01e55e3d6226f94803c0b2ed9259a9bc4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.332.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "70cae2c2cefc81d20e33e7e8407fef5a29424fb541fb78cac1d49616b49eb0c5"
    end
  end

  def install
    bin.install "agent-monitor"
    bin.install_symlink bin/"agent-monitor" => "claude-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
