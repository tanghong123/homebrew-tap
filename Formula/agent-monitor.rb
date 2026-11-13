class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.519.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.519.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "3d7ed1fea08a490a785cd383e96bc01503d02eb049d3fa1191393c0ea5f4dd14"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.519.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "6cfd343d9a5f2605f5f011261b748b113db138778d66fc06ef5e660ec365708e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.519.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4b473ecc5991ae9a05ebdb9351e9f8c24017e0b150d25669eeeeb28590364934"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.519.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "08dc49e6462ec5b6a8342bd99d995396dde55059d1b9b02eae844f052dad52ea"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
