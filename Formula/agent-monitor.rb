class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.279.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.279.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "8020e1b2d28073e11c5be54341444b9a60c4adb3ee7ac5fa5eb4d2268552ee13"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.279.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "5c6fea4fc8aa9fb8acce39945f45291520796c5c18cd1b11a20dfff435e8fa26"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.279.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "346251cd44bbd27f88942fbe66341da48166d2c0012c46de4c486843da9907bb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.279.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2c641b02b0627df7400a0bb4447cb707507561adec892cf6edc651c7b6ef7e14"
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
