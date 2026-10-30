class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.451.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.451.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "66344e70c929002c198ba9478e55e610aa814d60534d2e2570c1747bb44bc329"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.451.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "1f89ce1193317ed9b465b1c948987dc4913f1e6c1f6e8594c2fc9d52c70a3b53"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.451.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ebe91581ad53e46f2930739b3be4f25ed75d50122a6cafcc99197b7850e11136"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.451.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e3ee7758801def740bd8a1b775ca44c979d7250d455a8d74ce220a8f930d9fbd"
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
