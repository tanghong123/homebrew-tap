class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.394.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.394.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "7eb5f5e0eb42899d4515c84eef56730174459b14db1b6aa79742fc49c3ca5fa4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.394.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "ebe7c28018c02e61d1253b171ba681073773f3fd65435ecc5400d234d79b6ca8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.394.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e8bbf1421a3f72a5088922b55159208f7b1b7314eda674f101ae16e1a5f5596f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.394.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d6aaad490f0ee98fcf42cd9b4473732a61b568c5271107ef22139c7fa47e6731"
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
