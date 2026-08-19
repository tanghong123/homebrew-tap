class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.94.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.94.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "683734c3cf2d8189dee533fd78f3483b8a02063518811a9e8b4cd99b6dc8e42d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.94.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "38978d456d16101451e111895cb166cb3d86f046961359d9534d774e9871d103"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.94.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "67bbff67a2ff47eff2e31f8dd3134b7956c5cb01ab8fe291b2609135b2df994e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.94.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "29f71a148b3721d0aef7a7ae765162e5a4bae78fd8e682301c6eabff010a4926"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
