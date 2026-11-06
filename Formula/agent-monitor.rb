class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.482.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.482.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "2248b9ffcd32b2d5a2f05d454d5393dc24b4c944443035076d9603e3d11c8517"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.482.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "95ae8f56662e697d0e5395aad473593501940d6edb269d7febc0f171e55d6b24"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.482.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "922bfc53f5bb563c3efe40f66911068bd46f440bcd858aaf9bc722de336a5276"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.482.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "baca4b0d24f298bafecd60a449d3b5c3038e6b29c171c27c994b2bb3d6d4f3a6"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
