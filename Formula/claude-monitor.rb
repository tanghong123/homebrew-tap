class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.50.9"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.9/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "ac965b444d78db5f6b5ae088097f81f87cade514e93e3aca5862b62deda6e761"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.9/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "4aa6aacc21084d106ecf40c6d8d8c274d00dd27df748dde3034c863aacee8611"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.9/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "1aa4f9a8e37d891e5b0b69c84462c595dde1830ce3cd8383650d45e13330e5e9"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.50.9/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "fe128297eeb9547c153208c99608d99822dec304c0a5a1c5f9eadd49d2b4167f"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
