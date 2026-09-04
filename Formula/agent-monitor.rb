class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.180.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.180.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "1ea42465bd252fc81eee81fedcbbbf70d7befb3abb20a3ff9132d1cb77f262a8"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.180.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "1b28da13d44e2c7ecee7dfb17663b4046f1d06272ee5621fad688d0c11b5b6b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.180.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9521186778b4b34c9f85ac142a656bfef988389c555964511b35e18c606d091e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.180.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e0967f3d3f192475de94c34555e7bf5bff474bbf779e1e6ff4a70250af87b772"
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
