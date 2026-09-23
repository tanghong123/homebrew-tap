class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.295.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.295.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a6ee25a9c4da32afb612378c8912026d39b2e0dbd22d66b9a6b49adbec257e3e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.295.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "b2fcf1db322f61eb737afa4fcb478d2b5d10ff73555540f3bb7d562ec6aaab7c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.295.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1b2ff4535daf62abd338c53fe3e507f0628ef18b520ddd39b8264e2446f34f6a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.295.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "63af912be19dfbafea48937a8aa7af5643e7aa4865f1d3e0fa5249f4f7b9fd99"
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
