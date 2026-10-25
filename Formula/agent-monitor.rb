class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.422.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.422.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "30c8c6ee0515c7ca1b7fcf910d1aac051b8370865da15c58b11c96bb107cf496"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.422.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "b7c9731382606fb3e21191a1928b150f8603f02b8b18b51d3418b73b237b228e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.422.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4a7a1e48fb743e209e2f84f8886c471aa4f1765bcde2205c0456f1361b6b12d0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.422.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "941c9db131f44fe421dd34fc4a2b0e6e9772432933d512a544cad69c23560434"
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
