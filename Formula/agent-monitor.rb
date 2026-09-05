class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.192.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.192.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "1e8f217e0f2bacfdade0bdfed6f2ceece3f886d1d454f6cf3fd91cec831be459"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.192.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "be0ea243953b95799cf27301dca3ddc0198b5d2e43e32c4aac21009bd63dde15"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.192.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b9a7b718b968a5f2513253dbeebe184643aa680422cea5ccb9546cc698cd5a76"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.192.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c850aad086751203c4e44c83d110d5b8661a1e2cd6235cf4e1d810b7376a81d9"
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
