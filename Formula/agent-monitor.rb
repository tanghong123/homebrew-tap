class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.250.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.250.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "9f9dc53e9a8a29ebdcfb1575260cca109f239d8aa019313399b98ff2428a5889"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.250.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f8d835d44b59df37539ea7944440fa07028b6d6b23c907df2d48e7fe436d6e58"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.250.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e5dbfe4e6039bea606dd8105d214cd15d0c88b7c2a31023f55224417bdb7aabd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.250.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "1e61e18a549c039b3148dbb221c79d166e786e7ecafd038871ba12a359f9309c"
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
