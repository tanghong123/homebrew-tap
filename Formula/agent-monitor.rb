class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.113.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.1/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "8305186d154f56d6711b6a5590190ce7edba5a0e0fd4b0b7d0c86170345a6f47"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.1/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "70c6514ea927cf617ac91368d0945d29882f48ddcb8a90e342678f734ed6f306"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.1/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "90f1529368564c572e1355795d6a7618337617bcfb8a43485e7ab26a4e90e99f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.113.1/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b2477cca6f5d99b3b4f898c4ecdab9b0c7b99f2c313bd825b5776299a156a8b6"
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
