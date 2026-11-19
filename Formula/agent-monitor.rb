class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.539.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.539.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "23905404dbce6439baa38cbb2ffcc3b76bda758629f0bbd0031b563fc0688d35"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.539.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "355206534d17692427d44311da6cd76388f7b2edeb72bf7030c9bb8c907b3fb8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.539.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0c5d00a9fcdbff0093665d97873eec236d1a4759e0e8b20cf3d8d4aee9a978dd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.539.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "73deda8d6e36d05fb8358df70e5b3c5c5c08d11e2f78aeea601f7978005b4098"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
