class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.239.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.239.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "3a168d188e192402956278ca28c097bd33d6ad62bdccc8919e0da7166511e570"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.239.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "198a73aefe8d96ecfddfe6db2736db3986346a2be17e2f947aad083d10a36fad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.239.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6cfeef39f3ec542071a0e9b58ef1f038d37b410b0733bc345e3085daa7980dfe"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.239.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b2349d1f46b675d6ad9bd43266217647661e84ada373dad99eb3a63292407a02"
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
