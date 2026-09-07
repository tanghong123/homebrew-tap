class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.224.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.224.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "54ef2600b257f027e14e90056cf5b9ddf1cb0872a9184964540f810d6e805d72"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.224.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e9a8a60a905b9ec531db7c989258666075602c80cb1067067594a97cd9dcdd79"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.224.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "53916e5254b3a4d79e546a3a3cf29d3e2e4530c9b8cdbe8bb14da68f621aaaf6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.224.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1b6370ebae686c1676b64f4b0c30becb010ba101e01139513233674df6c3725d"
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
