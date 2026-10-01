class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.341.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.341.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "23b181c7ac6c2ecd39618ae88361ff8ea073a8309bc85460ebe0ea33ba926546"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.341.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "48335dd552491ed478c7fd2efe9d7b963d6c697040b432d796dcd20f562c9758"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.341.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "58470b36fbf9d1afc88fab053baed7d4bf2c4717e4adb0080e3776ed118c64e4"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.341.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c9927a0329dd4309c5a4528fb5e0af93696152e1f29508eca9ce84449be2553e"
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
