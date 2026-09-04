class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.157.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.157.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d35aaceddd57cf73d8067c5c9bae5e8ef45a5ba4bb92661bd0e8a03bec9d2969"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.157.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "eedaa58f79c5e70fc6bb792d8b106b45faac1f49786c96f1cec3798a6b46a045"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.157.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0ea1440e9d0b58b5984f24903251339bda1393583d99b0bc10cb2e9c4f7d2b31"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.157.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "94573ce703065f238dc06c4f0bf8251562d532883d808c3ca97c732b5bb20085"
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
