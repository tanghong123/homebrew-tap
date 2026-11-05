class AgentMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.475.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.475.0/agent-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "07c69c02cb9bb7112c1e02427a0b7f16e033f455073297f44070546449ae7a74"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.475.0/agent-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "942ef489d9fdbdf9555776c1d99707e4e458c7352debbfd317ecf2294f39462c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.475.0/agent-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1a7a41247cabf1882a14ff7ecfa2afcd079b43dff5e3e854781bd8d8a77c770b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.475.0/agent-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "98a3030afc516a25eef0ee948123f368e574313a8bcad97d178cb4953d8fc3c0"
    end
  end

  def install
    bin.install "agent-monitor"
  end

  test do
    assert_match "agent-monitor", shell_output("#{bin}/agent-monitor --help")
  end
end
