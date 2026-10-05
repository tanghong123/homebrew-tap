class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.347.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.347.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "56c3c42cb8d0120e0d82c7dbf2cd16209ae2af1fd432c77b24acfe1b014cc34a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.347.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "4f553e99770554c6bb37bb2616dff428c63e3c6f87743574e1c0f4123cad0df6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.347.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "53224ed80522c20688591519375d26bf0bc9077b3e8a403d01a432dde2a27ea0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.347.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "11ce76204cdf5d5d1e52144a06e763d762e6fe817e62c976b437f407e1781c50"
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
