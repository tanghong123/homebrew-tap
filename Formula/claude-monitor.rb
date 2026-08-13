class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.70.1"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.1/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "56ba9a8f7925b84971ed0e044e68e07353fbf0be523fb0512fc79206dbd0ad89"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.1/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "836fabaf503c1e8a670c9d81d8abaee4e9ac096fdb3ddff2fae2e3eff476a913"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.1/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "de5f11dec3c20a70324264164030da8f43c873b0b5c7101b6cf6578106d90dbc"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.70.1/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "06a1340a843c42470dea5ef3797bc17eeb0097308dc8cddace0d21897550a664"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
