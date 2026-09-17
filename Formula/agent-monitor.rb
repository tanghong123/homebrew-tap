class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.273.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.273.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "fc3b48c79f5cb36f65fc765ee3cbcbc2794c3bd1520e88baa0dd581c13a75f59"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.273.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "c2107f35a4159d60daef29111db901ba4652827e59dd63b755fe05e6dee1715a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.273.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e5a4605539dc90b10748a1ad4ee6576fcdbd03b5886c64abe05ce43ae0bbad6a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.273.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "83c2b58fb35a811d26bad31a6b89e72e468f7ab5ce305f3e86629c71ddc7a64a"
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
