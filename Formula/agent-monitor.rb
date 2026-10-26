class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.430.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.430.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "038bf09cf137ee78d952ff8286b6d7009ec516f97395f13a9341c42c24d7ad16"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.430.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "6992c2d74d45df938b4e677dfb4839606f0b31514d0a84af9b9c852e35d00025"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.430.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "22a899f9b4a66b7e363840b53f0f279e05e163520ff8036d7913be23bf812a23"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.430.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c48053454b78e80f2be8b982f21f23ba301f408f8aa945c8a483ce3a1736ecc3"
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
