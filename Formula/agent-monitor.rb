class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.144.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.144.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "51ae23fc01e34858149a02d8dad4be6ab43061d11c34c3f4cd8ad2b3c7de089f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.144.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f49fc9948edc43b48e03fb20ad22339f60d2ceeb9d64b91460dd5e4af6d1f316"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.144.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c9b3d2bdde2db5704dd54b1a34a1147c9164e3a2ad62a4c4785431734441992c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.144.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1949fc7a56c1654358d2e0ffc591d4855c131dfa8cec1a31e646400b50113644"
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
