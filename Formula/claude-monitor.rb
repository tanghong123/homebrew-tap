class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.2"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.2/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "bef6d0ec5745caec4a32fda98a1850eabb76d55170ca9e23e3aa631b18fa7d42"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.2/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "f24eef02bcaf709f7384eb2d5b90b18babea3b4a42c9b89f1506a9a73e531711"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.2/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "29626a16699c0baae433f02fceaffe48d2a55ced07a45200ed76057ff3e1821b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.2/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "4639227a382e6448634c88bb5cbce70a7252d10666b160881b28ec8f91e86164"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
