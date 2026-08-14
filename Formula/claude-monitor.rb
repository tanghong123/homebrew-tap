class ClaudeMonitor < Formula
  desc "Every AI-agent session on this machine, one page, over loopback HTTP"
  homepage "https://github.com/tanghong123/claude-replay"
  version "1.77.0"
  license "MIT"
  head "https://github.com/tanghong123/claude-replay.git", branch: "main"

  on_macos do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.77.0/claude-monitor-aarch64-apple-darwin.tar.gz"
      sha256 "7a56817eb69d2c728f349fc92c22be70ae03cf2dd78238fc40b97a15952f1f16"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.77.0/claude-monitor-x86_64-apple-darwin.tar.gz"
      sha256 "7d034638d665c4957de052eda5c548fe3d7585b75b23caf0fadc3680e74d3654"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.77.0/claude-monitor-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e3e0047678a45d1912d797f8eab2d4f21410938a3f4dbfb8336fcc7a11ba55ac"
    end
    on_intel do
      url "https://github.com/tanghong123/claude-replay/releases/download/v1.77.0/claude-monitor-x86_64-unknown-linux-musl.tar.gz"
      sha256 "341346830e680c10c2cc695b2b2352cce1b202c3b2e5b4b18a87588375e89c0a"
    end
  end

  def install
    bin.install "claude-monitor"
  end

  test do
    assert_match "claude-monitor", shell_output("#{bin}/claude-monitor --help")
  end
end
