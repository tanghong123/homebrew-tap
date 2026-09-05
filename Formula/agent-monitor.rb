class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.191.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.191.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f3d54d30ee6b691b1ac315bc8a90acbbc3f0ebe0bac31f64c77cd0b6fd4f1b36"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.191.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "13843454e06bf29936aeedc3a1ae79dbb193672a12c38a729b8febf7321540cd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.191.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ef1f216d487a6dc3a279aed61d2e3d065402fc0b377397c5a5042c4a8cda2304"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.191.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1baa49dd0ef72f505b1e9e5cb19b44daad666e8afa92e2a98f8d0cdf9f3dffff"
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
