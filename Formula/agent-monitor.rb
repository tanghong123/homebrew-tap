class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.560.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.560.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "806ab8ded1ac3b3fa3064620d6380854cd7aaadfdb403d14bc8602396949c200"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.560.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e218deb1d418e41522576f4514f60c27897b33da9676027bb01bf942a047eae3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.560.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "aff534ae60d3544a46f367530155b79e9d49ad25e51af44c1a91a4ebb09e8722"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.560.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d9517e1ce45ae396968451e50c374e66144a88b7bf4e5608336464e833fc7cff"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
