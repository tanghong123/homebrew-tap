class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.258.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.258.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "3860029cf717fd809398016775319b168426e1f5bd530c1f6fbedc6094db5f3f"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.258.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "68ad50e3208e03e49b3172d6a9cc297565ba8c465e6768d399b4df13213811d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.258.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "2a7d3c419ee384601ac295db756bd8e49856bcd6cb161f958c6d589cd46598b3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.258.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4095f0343393391a8181cb7825e0061660bbfabef582ab5e89ee0743004465e0"
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
