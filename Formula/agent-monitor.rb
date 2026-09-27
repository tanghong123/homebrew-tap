class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.316.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.316.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "60891de6dbe82f0f2a1af2edc45986603984ec96e88472e823381ad47a4eedbf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.316.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7809134eaddc148258e18d682262ad52cdfc6252c8f5cf360361e99a750a0213"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.316.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "5e986922c405cf96f93c8dbe2c40b4bae5515a5825c4fbb16c0f464abb9ced68"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.316.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6b20c80572db25ddd157e540a7e151ad117a681722239be15897b76033b2dac0"
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
