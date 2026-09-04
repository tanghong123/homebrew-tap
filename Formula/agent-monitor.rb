class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.173.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.173.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "325d2e849d039f9e40ace829d122d61f3939a19dd179a9578bc1a224112f22d3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.173.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "2d660cd9065e4d9d24a372222ad3a4721be10cab0ce039accf135db485176bfd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.173.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3bce4f84933c3629579a863838bfc0e831479f1de586520dc52a230d18d67c95"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.173.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4c5141de0bfec310134aae05831b1805d9a85dafe6589cacfd331731550b496c"
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
