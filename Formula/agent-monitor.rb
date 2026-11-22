class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.550.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.550.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "eb7ce116a47606af6adf505b6b674e81f5c9ace3ec1a4b1afa7332d5165cb123"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.550.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "0789dbfba952ae5806d180be1f34640bf9d9e3a4ee93796e5e137bb6cffb04d2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.550.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b4a3afbda4eea7e94f10712251ac129c026ce6ee850e705a39c5e48c586a4139"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.550.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "01c382b18697e0e6a7580d14102535f87b937218c2cf877c625bb1286b55fb9c"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
