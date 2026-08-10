class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.62.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.62.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "b2e5c9de36f6949043f60a1e298f5ec3406a2d14b339cb79ec4c007bf6c79106"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.62.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "673ae4723cf58e01b03fb977c5e54116046d9597616a0ea8dc941dac20bb1285"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.62.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "39e5bc0d009a078a65256dccfef2a2256e8b42781cb0993ae6deb385336f97e6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.62.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "2ebc88800308e42c91e1d20ac0d97aec0da1ee83f7cfac47c46bbb7a4cfaa489"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
