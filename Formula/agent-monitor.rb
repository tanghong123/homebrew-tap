class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.317.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.317.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0124e5ebfa1fc72163a693e09e30ff191c196ba0ec0ad8c5cfbd434a727a94bc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.317.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "80e98dee79991144052593402e40002373c6ed3cc8d290ff3d3b27d39ca48231"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.317.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "61a3c525914c7fbd36e7d792736eea9bc208866939af7507f56945aacca192fa"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.317.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f16d706b7e7d3de558a0a9f057bc4132f7e8148e58c6f8c3c4d18c9610fbd0f7"
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
