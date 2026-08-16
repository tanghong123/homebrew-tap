class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.91.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.91.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "cd15f2e82be0a6d2612ec3881feab49a20cd93d47b22274a70d2456faf071caf"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.91.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "8f8bb0fd2c7181b3da1c6d716e00be04ae000e3ecd301bb110c2061f6dd995e8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.91.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b97399d7067767f56da08f75879d9138a0004a5ce6f5d3164f4e6bf7ccefd515"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.91.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "83eba7d5e219883f7000d2c96971e04e6f35f659331250531d2ccb42385c3559"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
