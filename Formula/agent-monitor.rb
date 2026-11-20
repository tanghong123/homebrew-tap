class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.543.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.543.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ac2b93f821cf0d6fed447f0ae0d39bfe66c870a9102bd3cdefc9221808c37292"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.543.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "73d89bdbbab8923a2302fbbfb9374f9a34635d32e61eb68be66ba9f182e1f3ad"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.543.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "817b888543196662f227122e4cf57777d20e32d03d788768099b51d6dd48d00a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.543.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "10a86db32a80d3dfa23e27d81ecf49401246076a8ff4aafc2deeafb6edd6193d"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
