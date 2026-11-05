class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.470.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.470.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0e0db177f8a3f2dca9d5099399bbfe5371a3e51557f2de9de795570c607da6c5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.470.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "1337c45383637b91fda517858295f476f1ad2f238485bca7a95733d12fee4d07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.470.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e90014980ab613888796c475faf0837fc84d0473573d7cbffe32bf2c38cdc563"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.470.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "622dd4eef747982ba507a560d7414e82aad35d335170fa364adc19a91a80bbde"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
