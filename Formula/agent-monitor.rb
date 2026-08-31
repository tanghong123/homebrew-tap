class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.126.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.1/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f967a1f702d1f8ce46d9eb83bc35f7c6b2d6ac4c05f2e7a3724d4670e9a0ea7e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.1/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "6aa32f719e4871e86c74fff8597c601e2f09389bd46a00cddb0a634484c3cbb4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.1/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0441e904a3c7eda6e3825d7c7d72054ca5fb7d0996da0bc74e55299ccf72fa8c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.126.1/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3dea8e799b09058d2979bbb0989291a08647e3b6a24b38607cb5c79bf30f9313"
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
