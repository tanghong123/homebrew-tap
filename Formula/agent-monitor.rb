class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.452.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.452.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ce9a0578bce5be7a134c7c3fb23056e3a7eef2f555edc0eb2ef3a316d3b33d6e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.452.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "4cd00a6484014b3c093b70c383260652bba54a61e1b8f3e1eacacdc8a89e9a56"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.452.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "bbade6e662072b18e5a5596a8946ca669c898819b4021469856b82d862df9b7b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.452.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "92fa8ffb736159d29611ba68b1da5cd198369ce046cbc996a81b5e73d6aaa62e"
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
