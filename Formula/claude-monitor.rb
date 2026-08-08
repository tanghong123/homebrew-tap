class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.53.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.53.1/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "9cedc1dce212eeea15976622b4db705c4c2a6e3a93ccc98dd8985151405ef00e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.53.1/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7b86ae99f8fd10e5ad30b952f1d03239a70f33da41f87cfe0d038437fb12adb0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.53.1/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "4cb5256e26f833df716ce692640fc947791e17b0fcfe1f15425c02e27405a31c"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.53.1/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "5218d103609ed4344dfe80fff291676c57a356a621ecda9fa0217ffb585e1c4e"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
