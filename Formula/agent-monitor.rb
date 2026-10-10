class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.369.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.369.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "15809e5dcf7d28652d263f3b9daa3d347d9fef012c5bf68c83bd54ecbf8a4068"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.369.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "5e19432f3f27290c6457d426beebe9d9ea9427fc9dbbf58849321dbaad7c8d67"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.369.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "88021462514313cf995a246417248e777ae6f34790cfcadf7b12e15ac34f7f1f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.369.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d2559b5fc176cfdc9dc5ea1e4e420caf979869a26e9c465738300bed41bc7851"
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
