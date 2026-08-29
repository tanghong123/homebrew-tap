class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.114.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "2615249e96b2ac834616208c11eb211b2f3f79b2f6574db495c1eea69d092ea9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "c553a8c01f69b1c28c1aeec074f6035f8a4a66002c22e2120e9e59bb9294a543"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "209a368f78b24f0a0c22f8ad58715c5ab7d11c24b371f74dfb58a9e6593c0d17"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.114.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "420f23f9a0eb8a0139167106fe0d98c7835fc4579b35a4725a1828efb8ee7afe"
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
