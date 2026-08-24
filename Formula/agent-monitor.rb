class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.106.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.2/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "015f950c60324d06bcd79a9031f21e58536b1b3282c8a33c3b8cde3122df0c05"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.2/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "bf7b826ff55703ceec0e35b8bf5f31c59f483da845df961f588ffdbf03b7c044"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.2/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "13604b10f744d6e27901fa37a8ed37cc794dbd62db27331cfd84a84993e0aa4b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.106.2/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0aa50694e7e5986c461a99473d054359e6a05020f923e85ff3c94781316bab30"
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
