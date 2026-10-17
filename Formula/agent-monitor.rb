class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.384.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.384.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "805519b7ab0c6a5ab80177366512bf80c679c06b552111e2fb46904242b0e2ea"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.384.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "dcc99cadbde5834c7efbd7858f95a57181cd65615e6d7b007656f9de3d7922d5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.384.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7365e7481c1eea73dc22fd043236e95f9c0b7d7bd01ef04157714022ee2a0012"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.384.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "177ccdbcf408d62617a78fce763210855465b0d0d6b6edfc895245c9bea60334"
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
