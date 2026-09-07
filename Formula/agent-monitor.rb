class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.223.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.223.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "f51afe64948b5fc494f5bfe2f31eac7e5f6765487f4da4ce0da3dc5345820075"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.223.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "cea6bc2affc1f96d30f2a2697d7a2a19ff37972bd6c1809e3a885f8e2c5007de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.223.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4a4b5b3125bdb549e5db5c2f6d5b33f9e395cff01ec40277995f733cd54c5859"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.223.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fa1623ce0ebbc08adb1cc676e49103eb34c73db8f2570902e9cd12a20c9d5569"
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
