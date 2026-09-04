class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.172.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.172.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "26cc7862cf966e064f095e9eefa935a6a3959d7e02f23290ed090f201e64714b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.172.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "07b84fe1dc7b765679c4b6bbd0f13a1609be9de731be3e017f34dd01368e9900"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.172.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c8d5dd62c41b46d654944e6afeb500db62d41da1a51aae192bee340bc9e34757"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.172.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b629f7a439ca9fa59bc01f8531ee403f22f1dc8b4388108d3bf1bb7ca14b1720"
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
