class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.74.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.74.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "fc9e1baf3900d6c0a901c705d612f1ad35817630d7ea12688141c74d68e91a56"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.74.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "17a936bd9425203e64b48448459755311fc50c1e25e06940a5ec7e872c47dffb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.74.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3513f6bdbf61541b4a4eee839a6dec13c05dde1570cbea119d4e3d7a64795719"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.74.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "d2af76ede329c2137e5a9916c30462804876c1806d4e22faf367465fc8546632"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
