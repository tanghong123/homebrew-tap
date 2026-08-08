class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.51.20"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.20/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "705c6e8369d156a4589516abf3e27fdc6c11eb177ee1a7262803a1eec7f23a7b"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.20/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "dbdc32269b1fe8402ea14f94f3916aa3c2e99e87ce91d68e16700907df749c84"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.20/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "cb5fd31fa845b982d79206fc43b9cce6195af87e37d7661254be44a9d6810c70"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.51.20/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "9f47b5140fb8cf368653f6c3484f406d0a0a39c9efb1f8f79e3927bfa62d50ac"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
