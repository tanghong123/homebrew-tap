class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.323.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.323.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "147a756c2108d0344e448921caf62a790ce524ee2abe5c89403a5e57de593c13"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.323.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "29c8510823b4a6fd91f25245be98ad29e9b92e0d42d5d66ba97838f8e4ebfc16"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.323.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "a0f23dfabe31ed64cadfe6a8c7726365094a12da22e2f66128ee9f10c43ae308"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.323.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "01b727325627c62235c32e700c7f7d1daa4a6485d3e36f446d6310682ddf8151"
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
