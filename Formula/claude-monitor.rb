class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.76.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.76.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "2c6ea13dd27d9627b2db6d3e97efa475c61059a0e46400d42705b021ec2acd3a"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.76.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7a8e85236a93d90f16248670c3e51c704280eb8703413b85244c11febcd002ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.76.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "3392cd558537855aec7fb3bfea6a7caf6b5200278dcbc1413d00d089bed76d29"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.76.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "ceec77870d45e111cd8c8cec93b7a718645dd32f10ee573e8967617388745d8c"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
