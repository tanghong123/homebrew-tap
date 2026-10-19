class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.391.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.391.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "c9d0ab397fa42bfd1478fe02e716f6684c1c82456e7ec73ea9b04726e84af9ee"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.391.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "bd9fbcde9295cb36dab3cdd48e0d78d02d409e35648112d7605caceb7c5cda73"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.391.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cac9dc33f24fa66c05d5cd6b7429494a3ba534c499353fa995f223e997361fbf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.391.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c4c8c48b392cc0e35d494f843fda1fbce90f28dd53e9cd07228d3720248d261d"
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
