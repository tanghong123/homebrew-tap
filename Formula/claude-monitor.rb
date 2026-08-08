class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.5"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.5/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "74145b844e6bead7794b244e109031f2e2e24e9b93d488732b44a29e0ac9e75e"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.5/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "6465abcebf290a9e1959b55908b17e58f69ffd21de8cbfdf4d01867825f717dc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.5/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "77e58e6dd9b132c0a519a6bbd22e4942a5c61b9c017c1f1ff711b2b48948a494"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.5/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "a3f47227b8c611e5ed9c3d4afc7e2e237668538ed9758aa048d1dabc4b58c129"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
