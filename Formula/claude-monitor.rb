class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.12"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.12/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d5f8edde00bc44544bcd1ab4743bdda46719c4e25ff1d86ac77341f0392b0a19"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.12/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "07af5e8efe20ea6283c3b4097a37974bd19c3223efdb72b71a2d5ec25d55575e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.12/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "f0c225725d79b6646d2c2dff9305db51c02bc36b217e5672771c5930a97d443d"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.12/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "09da97e3bcb56b7b87642e17619bc681813a929b08151040abf9d1a824e30776"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
