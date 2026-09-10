class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.247.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.247.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "77f37a35eeb12b06c7e19a0fdb3e772e912730e4051cef506b72146b0c5b741f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.247.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "11db9573969d92ba04ed031a6930d084ddc25fa108f02e820116a5a07a3b1935"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.247.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cf9a173dd7105b0d0b59fabd3b5f3f21caed15d52fdef0a7b7ad3e2adea76d9f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.247.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1e9179a95edb379a07a2d5654976d1b06d6000f0d1f62b4acc4818b9a370f847"
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
