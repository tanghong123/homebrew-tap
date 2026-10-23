class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.407.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.407.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d3a4018e11521712d235c9867aad8cf94f23e88b54f5d52153b6379d842ef934"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.407.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "8aeda2391216b1e2c275fb51bf59bb6231ffccf9c9d4230e7c836c5d4dea7cd7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.407.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3cad310a849d4f3d425d7d85bde5465b8f05320fe06e2a9979377ed5b55be9f6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.407.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a8251432bd435f5e3561210c7da752ef92a97a49ae8cb66d55e302c72819006d"
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
