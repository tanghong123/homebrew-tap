class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.13"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.13/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "e910aa205b2918fd60e439c6850004dc8708995697e377b8244f5ada81494a90"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.13/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7f26e907862df0baed0b034ab324ee87b3d346d757a601087d599eb2a7db4d20"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.13/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b2f6fbab00c0308ad6c2b670b0c0b9055bfdf83ec86113444715d44f12b7cafc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.13/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9599bbca6f620685416200fac5e04bfa49a545335165fa9cd1933a9776324296"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
