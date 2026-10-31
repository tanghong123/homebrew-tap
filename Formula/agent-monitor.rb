class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.458.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.458.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "3cf3dc4c99f27ffd8b03e1446f879ea5f36ec7c3eef39a8fe119d281e0d85684"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.458.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "81fc7ea50d9a05b3b2a66217c6ef7d785fdb1a827e6dbf30a6d1f9039854616d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.458.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0f815d47fbb1e2e53987823510e0f918a51a2c04e0288a990b1240f87ea6fdcb"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.458.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "49c61ee7193e159f99797ea697ed7242ad834b5390bf53fe09d00e9386d69d62"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
