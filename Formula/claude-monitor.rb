class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.86.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.86.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "c1c4fffbd81d7d818a0a5189511412a9e2063166c117b9f3bf8b3b08f30c0c96"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.86.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "6d75d130448d54f73a1c9cfb3bf5597f1b98ca5e6f7ed70d379018136d68466c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.86.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d7a69a43df0b34f00c65b9b911afca32a311d7971a7e2da169ab373295498ad3"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.86.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "6482b8ebef740237a9414296d4a8a9f378ca76ba3e0bfa6567782fe417ceb6a7"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
