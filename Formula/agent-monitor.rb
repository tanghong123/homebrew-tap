class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.573.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.573.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "7666bd7b4c86b8a03fd3553babd726ed5cc1b6e18ea665276648629961c4a592"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.573.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "94f203d3a88f343abc90be55c28ddc0de7d906649d30be99587a1f169750a392"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.573.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "15df1dcfab7c3e70755a51edd9ec3be14c60ca9e9660f2c46953b7ba307d3069"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.573.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d3ea127aa99516a5d08de560854c9f6e9fd12513a8c4983ead2cc12eae86d1d5"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
