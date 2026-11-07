class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.486.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.486.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "7b0df25eb41bcf10d7c06c68945c1960c48f31922282b4867ca0f1d0a6b5e1fd"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.486.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "4488ebdb5bcca2a921876976e227d9ea372321e69582a1bcaaa133f4d29b5c47"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.486.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "fb139434982b61df9cccfaaa6bccbacb88d62e00858e450d5c5701cdf57b0e0d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.486.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ff7f117e5ee0ffbb6c8d4f38de592d87624eafe3a2cba06e25a733ae4a5d3228"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
