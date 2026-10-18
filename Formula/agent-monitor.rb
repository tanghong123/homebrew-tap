class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.389.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.389.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "b5c5ba537596a09700609b728571ddd329d928e46b4c8be869e39d497deb99e7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.389.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "3b37cd5f585728b114d6eedd6815bc98add234afdc1e8d7dba09bb6d75085678"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.389.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "72e7f4c772836c712d5b47ba35c187c0dff7d339301101d50e122e883bd17a80"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.389.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1b62f4f7e23f015284665cd0aeb7495fbeb49856b304f690de7bc1283fcc8b49"
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
