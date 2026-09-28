class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.325.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.325.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "abe38619dd68d38c5e68c05a76f48395af9a93d01e4f4a862b58af1d41341b19"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.325.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "d9b57bbb5e3825c6911bea2eb00c7305cabb43ae03cfaa18279b34be06698567"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.325.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9fe1ea18bc9ff7d1ddebdc1c3ec309d4cc7bcd0c30a14dc747b29bc5580dd08c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.325.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ad99dacd16c2cd10e12ef309c185fe75b9b2e7f0fab0f4ea7e8722783ba38f2b"
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
