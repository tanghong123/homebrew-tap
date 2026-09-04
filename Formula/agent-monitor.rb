class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.156.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.156.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "b57530eb00cca70f2ac3743fd0f563a8d15aba4d2c4146e16d3476bc3f8c1a9d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.156.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "881ecec7cd8a6e31abfc03f1d4e8742038c8c540394ad27a88ab263f0fbdfa07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.156.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "975e92698e373f47c173df722069e65cdfc7c3a342f5419d428395471b370694"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.156.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "bc991d0cd888d3b0a6b9adfa50bd41ad6a0bf8e2273a58072a85fc805e84e0e3"
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
