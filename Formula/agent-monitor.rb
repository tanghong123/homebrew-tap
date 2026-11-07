class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.489.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.489.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "84ba26ffacdfc9c9d3c4cf9c6c8fe039297cdd93555c6a02da8135d3f5e17ee3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.489.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "b668f9adf4e6389250a058eef5ca92b9ee22a11046332a0fac9ac5c4b1ebb06d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.489.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ff31e8fff85f2c6ea04cdc6a13574720abc405552146c80162b2b154c247ac6c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.489.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "13aa3d221e4aee5d9dc28bdfc75a591bc5919b0856d9c9cd3ba31377d12a1942"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
