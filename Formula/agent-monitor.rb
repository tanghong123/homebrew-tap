class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.111.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "aaced5864b6a239dd57e4fef6fcf08adeb24a98983e3945027dd356268a17a11"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "8665af765f1f74013ced8df1a8429635ca204587ecb438944ba5fb405405475d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "8cbfc57cddb10307ab9ad1fb7d8c51cf0ff2db8a9879b096fa0005a798b4885e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.111.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6d4c9a0afb1d33ed1285251a558fd96b1aa5f2adeb9fd356d6b6cc15eb513e65"
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
