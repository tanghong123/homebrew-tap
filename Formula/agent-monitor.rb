class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.305.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.305.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "962977f32bbd21cba8388a5d2159a74c30d243ff1f99a3f226329fbb5750f606"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.305.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "8f7185d3aa0480af2ac858c8b9f46db7f99dd1c6ff0703e59f3b99f00a39f6ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.305.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "22b5456950251fd12adf1d578fbd54bb2f99c26d83016f2cce83d8867ac49788"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.305.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "babf5ac7ed88af1796fc62bd1c327ab768796d3ad46f96ecdf6a11a29015ed9b"
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
