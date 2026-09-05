class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.201.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.201.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "856803c4c13a1ab85e7879eea5fc605a2bbaa66d0e8bbde4b05902ddf58fea22"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.201.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "d6746ffbd96e64fd076c37c8123a21c671e498b7b5f932c0ece226c69d0b9c2e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.201.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2d8623b97a3d10cd648ffd4754c2f98a6ac172f26add2c4a2016890c07e750f9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.201.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3dd1c9bc502493e70e9e3d103ae8318e2598f2e2fb208f45ba8893ec6b7ba509"
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
