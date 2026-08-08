class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.8"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.8/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "d39a24938ce7f42acc2255d267e994cfe5ee1b808eca1e541a716198d78a5dde"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.8/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "05d8e91509977b8f08c36339acef536a113c93c0957bf49c7beff79cf28c37fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.8/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "d4faa86b3c84274793fdc81edab0b1496b04ed74af83f7ef2563b1861e29ccb0"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.8/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "05af9097b0dae40ba200dbd44047a7a01a95547efd821ab3b73b730250702aa9"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
