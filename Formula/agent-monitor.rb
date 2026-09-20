class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.285.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.285.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d493f5ef8e6111f0adb13b2b7654044c0b1cbcbe53eb60923662919e8827493c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.285.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "2e108095b378bdc038260a23ba5ae2b75cea2ece16fbdc24f8c7fee3b6f48611"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.285.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "12ecd954554284ac6b3664e2558ab6c37840abd23ce34feb4f16a82e0e0313ec"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.285.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cac1acf2002801e2b4bda1308258747d3adb60dfb6701423944130a7a76c58ed"
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
