class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.147.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.147.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "a11b288caf73e8571009531e61064f9bc5b562161dada441bdf39d667a3faf26"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.147.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "34132b89d331efff4d1ab9ff91d3daf42a575bf84024c581f33f7b85d3024d6a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.147.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f6d61068f8733950f3c98a0cd453314f4cdc1cd874ed62b9bbee506b78a54678"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.147.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "461fd8b08450ce4dec0e4370ce2246baaa1669a3743bc9081078e2f05d931e3c"
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
