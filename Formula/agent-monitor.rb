class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.103.3"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.3/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "2676dde8bed2ab938fa1ff11a2f0a2768dd7b332b19b1435b7875af0ada5c547"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.3/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "c2a2fa27c91dff5eae7c14b536115c3d2a5c000126e0bf0b206248636171244d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.3/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b98955133fa048c15279a233a078e186611d90e5eb31cdfb097d50770cf71d8a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.103.3/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "573eda20601318def05a8911eb26173015f6926bfb58a067a2c519a667d86e3b"
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
