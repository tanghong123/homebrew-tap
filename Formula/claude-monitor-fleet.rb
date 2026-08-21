class ClaudeMonitorFleet < Formula
  desc "Several machines' claude-monitor pages behind one loopback page"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.98.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.1/claude-monitor-fleet-aarch64-apple-darwin.tar.gz"
      sha256 "591ad0dea0bbcc8c1a4ce83300cebad9760e39db861413014999fd3752b95f36"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.1/claude-monitor-fleet-x86_64-apple-darwin.tar.gz"
      sha256 "cc8b8d9651e9e4a4799829fc4e35581ade4311d428947e15ade8b31b4ad31204"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.1/claude-monitor-fleet-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f05354d30b512bf0ffc1b1a352f400a40a2d76eb59a6117f06e20dbd7d8f4898"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.98.1/claude-monitor-fleet-x86_64-unknown-linux-musl.tar.gz"
      sha256 "f920c1a57335d3231e04f8e5f851e2e274820f85d402ce67c379335168bad4ad"
    end
  end

  def install
    bin.install "claude-monitor-fleet"
  end

  test do
    assert_match "claude-monitor-fleet #{version}", shell_output("#{bin}/claude-monitor-fleet --version")
  end
end
