class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.198.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.198.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ba93e0edb05c2370d1ca8311d03bc614df5e389f3d60036eadcecaf562bf65c9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.198.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "86b5e799a62babbedd4152d5b2f024551db37bf066146c75dfdb44c59d7906fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.198.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "30ed3e09de637059090a4a51c65f84ac1ad95242fa210138b8ad117f7c8eb38b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.198.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d48afbac0589ef7669a8c60ddde11709d00d278b13338c38153ecdca9c3068b2"
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
