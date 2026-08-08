class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.10"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.10/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "58599a83a94493efbcb04f0148b69ae7c907f9ae8d2eee2d7980359f232ea5e6"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.10/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "e2c04f3cc09ce89a5d3bd9b666878631dd589b8f1a588352c5f9c0774299b39f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.10/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b784b48be52abdcb874bef966e6aa84bcee574c1b3d16d6f3af397b6b7045d23"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.10/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0f0f47939c682234a83cb0ed4e71f7e1452ab87af492bf25b8a33bb503305680"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
