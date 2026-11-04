class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.466.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.466.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "e5b7448b52302f16cbcda386873e557888ae1d0c6008a8d76a724dea8a096710"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.466.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "d7245164c006a3ff40d4a50253126f7bfd3b2a90fbfc39878da2be4b741f7809"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.466.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e64779c11132a717db654b14bb85c604cffddf5bad2cfc88db24b1514589839e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.466.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fba39142ccd914ac1641fb64fa3d3b1b48d058396c1ac433c814337a3c1fa62a"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
