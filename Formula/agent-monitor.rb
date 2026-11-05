class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.473.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.473.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "3646b41c5f61af927cdd03246ffc626ce3d7e3c92b17790f49e72a0369cbd63c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.473.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "bde321f386b4b24c575d12e9c5a7ce065365f1381ca7b0a393fe8362e0d220f2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.473.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "9d7ab63ebe530bf2c8494ed094b97ba9fc6635570919308c4146308e1a916ed0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.473.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c0838c171357148aeeff17074f9cf747641d3a68883d9e552e4af32450ebd42b"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
