class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.358.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.358.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "2594c7e94807b8cdd134f61041d2de1727cc5539fce5ef27ed84579530d77ff0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.358.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "abda4733e81599ceea8e55ae4a4bf8c5c2f010b113dc3bf198406e0851de872c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.358.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6aa8c47508395738a1efdd2465eb879af1bdbec4850736bed8a501746fe62169"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.358.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9d679b01e07d077ad88ce3b10e915249d52749690f82a4fe39649db0ccdce2b1"
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
