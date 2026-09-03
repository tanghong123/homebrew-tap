class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.136.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.136.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "c0385dde7c9055056ea682fcdeb280fb5d3e47e644fcb0c88b56a0cb0bb12579"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.136.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7e73567b313cd36d2e78b579926175ad686629160f59d943dcad754c2e2d3eb3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.136.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bb5ace930cdc8f2530509e78aaf87af3786f8ce0e53623a994b14c6c8f7f7d9e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.136.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4d9f0d9e1686c9db61d57b5423b29cec1755d21b7a771b8e6cc33248879aafd2"
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
