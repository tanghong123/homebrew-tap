class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.562.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.562.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "dfd85f2631bceb7540f7c1a8ba999cfd14c9ac2393d8431d41f86c7e3e4a6819"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.562.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "d172bfb7e527b2f4c79bb8d3d3b4b02285559d2af840f6c0e6da9d111fbaf9fd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.562.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "086191873613fdf885bb3c7678c17d7b16525acb3a9643be1f03bc5817d61210"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.562.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "eda86783d28c5586489f5888dc92626fea3a1acd930f1d5b8bc9bc27c792094e"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
