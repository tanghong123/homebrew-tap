class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.294.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.294.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0664ff620bbffd744f4c395aceb81e9456e6c606fedb651f6b1f122d9b661442"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.294.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "07c5d8442e9074f608ef3a1d3bdf3e03c4d666b5b6f70b2cc0c0166f0ae4c573"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.294.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5b504652630166c5928050fab6a8d06735480c4fcb1e769f968dbfedb281c3d6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.294.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "288409499de65483dd82cf8743884cf0989b985c82cc5260c671fc75d4eb764f"
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
