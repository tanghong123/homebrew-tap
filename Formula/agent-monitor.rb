class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.409.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.409.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "53f435a059064dfb8dd88a9f9b4f5deea9d4adf33887e652f45257c074613942"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.409.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "4bd727edd247247f5cf7ef06ff84b674f99604206146288742d12bea85cd5689"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.409.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "96e68aef5c9e8aed52c14e7c5820d168cc67b1bf8535cddda1b437b875b20866"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.409.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a918b064121eae127ab6bdd6c26cf10961e547edd4fb689d687a9bac9ac24bd7"
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
