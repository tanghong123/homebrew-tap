class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.324.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.324.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "231211d9eadbcb0fb386599afbee06cfc9f554cbcc73557b37c5d0a63d6f54db"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.324.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7d3fc2d63c17c9f2c419f196a20142d9758fd3847ee98a4c6fbcab15eb1f942a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.324.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e552f922aad3610a74c89ceca93dce78cd13b907d54ed65f3370795697e06ce2"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.324.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "abebf50cef3f93ab61f19724503f9b9fd9fd607f1b35e8d61e452cef627001b9"
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
