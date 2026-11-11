class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.510.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.510.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "9e95288aa16796ebad23839cd6d7bcb53acdb1e172ca755921f787e2c3d96d04"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.510.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "ec320392f5d43c7218cd9ce5989f55b43cd6ba501d7fcbc6f63cc1fca0259060"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.510.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3bd166ac5023d0dc96a0861d75952dfc9ce3274a36ec2b239b095ec83cb87f14"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.510.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6cfc34608e6b6ac1572cde521d5869bc9ecf093ce24de6dcdb0e2ddf8565a472"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
