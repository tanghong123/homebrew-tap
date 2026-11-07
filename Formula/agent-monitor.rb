class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.488.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.488.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d1efbc0cf1bb2c13bcb6b4afa4c8ee9378734a2f0ef2c68d443585e82cb9c0d3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.488.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "399509a720977ec407b74ec280f672f0e42bccc6ddcdf9fa2622c442e86e63d6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.488.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "7991f17bf4d507343d5b5a4963ffd035cfa0b34b988c1ebb2490cd96b779b9db"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.488.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fc676b2f847fa2ef6a228dd1bacf5f3a56d5092d33294474219b3cb685e67e3e"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
