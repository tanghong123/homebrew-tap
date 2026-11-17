class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.530.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.530.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "169758edf0e2135fd468bf5191add37b6f9572d33f91b16052d42a72f8618863"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.530.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "4c7400cdb23f2fdef49a39aa3c2c815514f7551e5adc886125d45290605bc926"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.530.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "6666f7d31b12af35c9959150a3e888a889b92810459ad576c69f84be948f454b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.530.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cec6b7d54f55f32786bb010f5f0db85e2b8a42da271d0389798e800e756f3cbc"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
