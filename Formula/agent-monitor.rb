class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.155.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.155.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "993fd2ce15971fcbff330a1b463edd0f8e3ccd204e829539f94339a549161610"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.155.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "0e5e85a864ac8e426d56e13e1739b60995bfc13c998983f83ff18bba4ea37e9a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.155.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1d72c697e09f25c52368baf617379671e7ecbc0fb08108e7e5b71a47c0cdb99d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.155.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "79e1183bb0bf1710cf4c575a4cc7ede207df079029040c79936f223ce2cdc90b"
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
