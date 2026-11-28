class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.578.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.578.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "70d3748dd6ce79b6f777856c4d2d3c76ab0adfc425f5db295516ba6dddf4bf43"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.578.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "d22edd5767c5b26bd9d85a475957b0420a18ff9d5d2e43836955a112cecc2b0c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.578.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d763ea879e5ac8cb53e18761be55940b8b7ddcbe1c55fb9f1d04e6670ef49c5b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.578.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4706af333856399048d52ba12b685b750a36566654aa531e24c1f95d27e1edf8"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
