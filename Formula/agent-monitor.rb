class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.428.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.428.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "826cfa1e29853e1ec87dae159dd3a82fdbbd77a511cd6304cc23a0f1b0d64498"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.428.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "fe045e51f4cd05846da0f03be988a0afaeea64370bb166c1c62a857728c63e20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.428.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b2190a323ab37114f9958384d63a5bf68ffc97f8e8a00cb6c08b956fcd67fd75"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.428.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ca6ede51f179dfe87a42c0acbed8ae86c5ebe4d6cbd41a21cc46baa4e34d98a7"
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
