class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.4"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.4/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "0b355a04165346635fcaf0d57c0ec2f638aa36e21ec844edd7a6cc8836436133"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.4/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "75fcaf9372c587c36e4279aa3bc2f5698a59d3618bbc144d02222975cbd2f1bf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.4/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "57b08f4482a9ad276ef1dd052bfe4c1b40f2e8b0f5b0fa2d34f5e710b0da4464"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.4/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "3e2759464af4ae9c934149c125d62635af0948595db497430095ddbbfc94150f"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
