class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.311.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.311.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "2ffa3b9db04c9d3fab12382fdd0628867ef8aaf726ad7f8c0ffc469bb061f35d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.311.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "9b1a6be7788b0626eb91feb84b4293d0c10d4afa80ac80209e1ba36044952c80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.311.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4cca52d85a5145fff5d7105e6df0d47e13e88f7bb19b1b2ae6450cc3b3aabdbc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.311.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "584a08caf161adc9ee4f926f77b1a5fe2311cacfc0de412ce6a342b2fc50f30c"
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
