class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.449.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.449.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "20bb7f88f4961968c1ead335d5abc5676333f91bb1259914e3fb45edeb553080"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.449.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "78ec2185b48e57ccf1616049038227966cd51dde800b4a07a3d6de47b4f90b66"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.449.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aec1196c055556016675895607330c86a584051b73c089d4be2fc48a6f527d48"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.449.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0e18f39022993a25bc58e01622cb387da9b9fda8444cfebdde10b663377686e9"
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
