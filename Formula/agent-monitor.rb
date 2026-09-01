class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.127.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.1/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f6c5065e9c29470d388daeb5c561a353cab778c770d010ca07907b27e2cb4497"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.1/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "75f692bc2d1403eb46edd123e69c54621e6a8809e4d5d6a6098f7ea8b361a0c7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.1/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "516263ec66836e9d6d97c4d718e2e5b451a9127dca8974312864cf9be6fbad40"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.127.1/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bfa8b1ea28105c149e779ee94231d3d5f90791d662ed4b9da26724d5fec8e5e5"
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
