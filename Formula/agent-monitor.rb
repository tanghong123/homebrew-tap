class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.445.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.445.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "1efa228241002f390207f308db30dd308a54f55cd0d5d974ebed2c21193c3339"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.445.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "0fb3606dccce733c36c1164e96af6a4269ffa102db956408ae2d244934d1d5a5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.445.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0dadddbf384c58bc18c1393858e6a301fcd2c21a3f6129d085b0cc55dfef9a87"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.445.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "45054222bd65d98539c3dee4e9a39219a518a45a96e3885a984e91c1925bb670"
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
