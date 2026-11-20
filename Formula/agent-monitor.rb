class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.545.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.545.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "87b7eff8fce19b1cb033726250f09be9553a375ba65461fe8ed6268d3530eced"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.545.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "b11cba67217f9d3df504064afd0b0140d8189c24651462b49aacc6d6dfe34b28"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.545.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e9799b6f02a88aad56a716e15e856b649950ba6efb76a7301ea5d6c0bb8d79c5"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.545.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "b1138a5cc86b5d1a4a74a93aa5e3ead8827393b85638d368261a58088758dee6"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
