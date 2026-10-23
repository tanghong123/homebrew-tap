class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.410.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.410.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "36cd123cd963851242b186843b854d96b652af11750402d5dce4814162fb926d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.410.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "b21cd62f638d3876dc71763f510a2dca79665362c3b95f9b9890ebe8b88f396f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.410.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "07319bae2c81a02b1ac938f4c0fbeb49f5fc9c25dacb74cb76cd73fb015e6e1e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.410.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3246533d230bc2a214c1ace130ce8b8733f60ed46c75c48b795f14536aa2cdf2"
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
