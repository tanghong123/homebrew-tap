class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.534.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.534.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "8838f769c6773a4e78820ad9284bdbdba74da550d372793cea6dc30d5b8738cf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.534.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7867c0f1ba82a37a17d66027bdfc1b43fb04bd23be479b1cdb9b8e0299efceed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.534.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "95e2bf42636af423c2ce2cd8b53d4920274000cc42b8cdc011c6a4502fba4be7"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.534.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "be7e09bc0fa3cc9925732841d80327dbfc7eb51bd5b18116d334be52f3d63e91"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
